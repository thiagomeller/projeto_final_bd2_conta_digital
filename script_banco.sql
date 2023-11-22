CREATE DATABASE bancodigitaldb;
USE bancodigitaldb;

CREATE TABLE [person] (
    id INT NOT NULL IDENTITY(1, 1),
    cnpj VARCHAR(14) NOT NULL,
    PRIMARY KEY (id),
);
GO;

CREATE TABLE [user] (
    id INT NOT NULL IDENTITY(1, 1),
    person_id INT NOT NULL,
    username VARCHAR(40) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_user_person FOREIGN KEY (person_id) REFERENCES [person](id)
);
GO

CREATE TABLE [transaction] (
    id INT NOT NULL IDENTITY(1, 1),
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
	[type] varchar(20) NOT NULL,
	[description] varchar(50) NOT NULL,
	[value] value numeric(19, 2) NOT NULL,
    balance_change_type char(1) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_transaction_user FOREIGN KEY (user_id) REFERENCES [user](id),
);
GO

CREATE TABLE [card] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    card_number INT NOT NULL,
    card_holder VARCHAR(60) NOT NULL,
    card_validation_date DATE NOT NULL,
    card_cvv TINYINT NOT NULL,
    card_member_since DATE NOT NULL,
    card_type CHAR(1) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT chk_card_type CHECK (card_type IN ('D', 'C')),
    CONSTRAINT fk_card_user FOREIGN KEY (user_id) REFERENCES [user](id)
);
/* D: DEBIT, C: CREDIT */
GO

CREATE TABLE [bank_account] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    balance NUMERIC(19, 2) NOT NULL,
    credit_limit NUMERIC(19, 2) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_bank_account_user FOREIGN KEY (user_id) REFERENCES [user](id)
);
GO

CREATE TABLE [application] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    application_type CHAR(1) NOT NULL,
    value NUMERIC(19, 2) NOT NULL,
    interest_rate NUMERIC(3, 2) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_application_user FOREIGN KEY (user_id) REFERENCES [user](id),
    CONSTRAINT chk_application_type CHECK (application_type IN ('S', 'T'))
);
/* S: STOCK, T: NATIONAL TREASURY */
GO

CREATE TABLE [loan] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    value NUMERIC(19, 2) NOT NULL,
    interest_rate NUMERIC(3, 2) NOT NULL,
    installments TINYINT NOT NULL,
    initial_date DATETIME NOT NULL,
    final_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_loan_user FOREIGN KEY (user_id) REFERENCES [user](id)
);
GO

CREATE TABLE [actions_log] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    action_date DATETIME NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    description VARCHAR(150) NOT NULL,
    PRIMARY KEY (id),
);
GO

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

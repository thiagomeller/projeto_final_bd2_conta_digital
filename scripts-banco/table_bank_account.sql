CREATE TABLE [bank_account] (
    id INT NOT NULL IDENTITY (1, 1),
    user_id INT NOT NULL,
    balance NUMERIC(19, 2) NOT NULL,
    credit_limit NUMERIC(19, 2) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_bank_account_user FOREIGN KEY (user_id) REFERENCES [user](id)
);

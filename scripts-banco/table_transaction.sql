CREATE TABLE [transaction] (
    id INT NOT NULL IDENTITY(1, 1),
    user_id INT NOT NULL,
    created_at DATETIME NOT NULL,
	[type] VARCHAR(20) NOT NULL,
	[description] VARCHAR(50) NOT NULL,
	[value] NUMERIC(19, 2) NOT NULL,
    balance_change_type CHAR(1) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_transaction_user FOREIGN KEY (user_id) REFERENCES [user](id),
);

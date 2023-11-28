CREATE TABLE [transaction] (
    id INT NOT NULL IDENTITY(1, 1),
    user_id INT NOT NULL,
    created_at DATETIME NOT NULL,
	[type] varchar(20) NOT NULL,
	[description] varchar(50) NOT NULL,
	[value] numeric(19, 2) NOT NULL,
    balance_change_type char(1) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_transaction_user FOREIGN KEY (user_id) REFERENCES [user](id)
);
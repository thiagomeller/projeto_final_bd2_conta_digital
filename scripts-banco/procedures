DROP PROCEDURE MakeTransaction

CREATE PROCEDURE MakeTransaction
    @userId INT,
    @type VARCHAR(20),
    @description VARCHAR(50),
    @value NUMERIC(19, 2),
    @balanceChangeType CHAR(1)
AS
BEGIN
    INSERT INTO [transaction] (user_id, created_at, [type], [description], value, balance_change_type)
    VALUES (@userId, GETDATE(), @type, @description, @value, @balanceChangeType);

    IF @balanceChangeType = 'C'
        UPDATE [bank_account] SET balance = balance + @value WHERE user_id = @userId;
    ELSE
        UPDATE [bank_account] SET balance = balance - @value WHERE user_id = @userId;
END;
GO


DECLARE @UserId INT = 2; 
DECLARE @Type VARCHAR(20) = 'Credit';  
DECLARE @Description VARCHAR(50) = 'Depósito';  
DECLARE @Value NUMERIC(19, 2) = 100.00; 
DECLARE @BalanceChangeType CHAR(1) = 'C';  

EXEC MakeTransaction
    @userId = @UserId,
    @type = @Type,
    @description = @Description,
    @value = @Value,
    @balanceChangeType = @BalanceChangeType;

DECLARE @UserId INT = 2; 
SELECT * FROM [transaction] WHERE user_id = @UserId;

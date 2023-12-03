--- Função para Calcular Saldo da Conta Bancária: ---
CREATE FUNCTION GetUserBalance (
    @userId INT
)
RETURNS NUMERIC(19, 2)
AS
BEGIN
    DECLARE @balance NUMERIC(19, 2);

    SELECT @balance = ISNULL(balance, 0)
    FROM [bank_account]
    WHERE user_id = @userId;

    RETURN @balance;
END;

--- Função para saber o total de Transações do usuário: ---
CREATE FUNCTION GetTotalTransactions (
    @userId INT
)
RETURNS INT
AS
BEGIN
    DECLARE @totalTransactions INT;

    SELECT @totalTransactions = COUNT(id)
    FROM [transaction]
    WHERE user_id = @userId;

    RETURN @totalTransactions;
END;

--- Função para saber se o usuário possuí empréstimo: ---
CREATE FUNCTION HasLoan (
    @userId INT
)
RETURNS BIT
AS
BEGIN
    DECLARE @hasLoan BIT;

    SELECT @hasLoan = CASE WHEN EXISTS (SELECT 1 FROM [loan] WHERE user_id = @userId) THEN 1 ELSE 0 END;

    RETURN @hasLoan;
END;

--- Função para saber o total de empréstimo por usuário: ---
CREATE FUNCTION GetTotalLoanAmount (
    @userId INT
)
RETURNS NUMERIC(19, 2)
AS
BEGIN
    DECLARE @totalLoanAmount NUMERIC(19, 2);

    SELECT @totalLoanAmount = ISNULL(SUM(value), 0)
    FROM [loan]
    WHERE user_id = @userId;

    RETURN @totalLoanAmount;
END;

--- Inserção de dados na tabela 'person'
insert into person
values('55.736.492/0001-70', 'JackDonalds'),
('69.540.060/0001-01', 'SaSaddy'),
('02.293.270/0001-63', 'ApartamentosSP'),
('60.947.290/0001-07', 'ProfessorJorgeCorp'),
('55.979.770/0001-10', 'Pizza Queen'),
('26.067.046/0001-11', 'KingKing'),
('12.327.803/0001-34', 'FreddyFazbearPizzaria'),
('00.003.725/0001-33', 'Ubhard'),
('77.298.730/0001-45', 'Gear'),
('65.453.784/0001-59', 'AcabouACriatividade')

--- Inserção de dados na tabela 'user'
INSERT INTO [user] (person_id, username)
VALUES(1, 'JD'),
(1, 'JD2'),
(2, 'SS'),
(3, 'ASP'),
(4, 'PJC'),
(5, 'PQ'),
(6, 'KK'),
(7, 'FNAF'),
(8, 'UH'),
(9, 'GR'),
(10, 'AAC')

--- Inserção de dados na tabela 'transaction'
INSERT INTO [transaction] (user_id, created_at, type, description, value, balance_change_type)
VALUES
(1, GETDATE(), 'Credit', 'Depósito', 1000.00, 'C'),
(2, GETDATE(), 'Debit', 'Compra', 500.00, 'D'),
(3, GETDATE(), 'Credit', 'Depósito', 800.00, 'C'),
(4, GETDATE(), 'Debit', 'Compra', 300.00, 'D'),
(5, GETDATE(), 'Credit', 'Depósito', 1200.00, 'C'),
(6, GETDATE(), 'Debit', 'Compra', 700.00, 'D'),
(7, GETDATE(), 'Credit', 'Depósito', 900.00, 'C'),
(8, GETDATE(), 'Debit', 'Compra', 400.00, 'D'),
(9, GETDATE(), 'Credit', 'Depósito', 1500.00, 'C'),
(10, GETDATE(), 'Debit', 'Compra', 600.00, 'D');

--- Inserção de dados na tabela 'card'
INSERT INTO [card] (user_id, card_number, card_holder, card_validation_date, card_cvv, card_member_since, card_type)
VALUES
(1, '1234567890123456', 'JackDonalds', '2024-01-01', 123, '2020-01-01', 'C'),
(1, '4895648985452462', 'JackDonalds', '2024-02-02', 123, '2020-02-02', 'D'),
(2, '9876543210987654', 'SaSaddy', '2023-12-01', 456, '2019-06-01', 'D'),
(3, '1111222233334444', 'ApartamentosSP', '2024-03-01', 789, '2021-02-01', 'C'),
(4, '5555666677778888', 'ProfessorJorgeCorp', '2023-11-01', 321, '2020-08-01', 'D'),
(5, '9999888877776666', 'Pizza Queen', '2024-02-01', 654, '2022-04-01', 'C'),
(6, '4444555566667777', 'KingKing', '2023-09-01', 987, '2021-01-01', 'D'),
(7, '1111444455556666', 'FreddyFazbearPizzaria', '2023-10-01', 159, '2022-03-01', 'C'),
(8, '7777666655554444', 'Ubhard', '2024-04-01', 753, '2022-05-01', 'D'),
(9, '2222333344445555', 'Gear', '2023-08-01', 246, '2021-12-01', 'C'),
(10, '8888777766665555', 'AcabouACriatividade', '2024-05-01', 852, '2022-06-01', 'D');

--- Inserção de dados na tabela 'bank_account'
INSERT INTO [bank_account] (user_id, balance, credit_limit)
VALUES
(1, 1500.00, 1000.00),
(2, 800.00, 500.00),
(3, 1200.00, 800.00),
(4, 600.00, 300.00),
(5, 1800.00, 1500.00),
(6, 1000.00, 700.00),
(7, 1300.00, 900.00),
(8, 700.00, 400.00),
(9, 2000.00, 1200.00),
(10, 900.00, 600.00);

--- Inserção de dados na tabela 'application'
INSERT INTO [application] (user_id, application_type, value, interest_rate, created_at)
VALUES
(1, 'S', 2000.00, 0.05, GETDATE()),
(2, 'T', 5000.00, 0.03, GETDATE()),
(3, 'S', 3000.00, 0.06, GETDATE()),
(4, 'T', 7000.00, 0.04, GETDATE()),
(5, 'S', 2500.00, 0.07, GETDATE()),
(6, 'T', 6000.00, 0.05, GETDATE()),
(7, 'S', 3500.00, 0.08, GETDATE()),
(8, 'T', 8000.00, 0.06, GETDATE()),
(9, 'S', 4000.00, 0.09, GETDATE()),
(10, 'T', 9000.00, 0.07, GETDATE());

--- Inserção de dados na tabela 'loan'
INSERT INTO [loan] (user_id, value, interest_rate, installments, initial_date, final_date)
VALUES
(1, 3000.00, 0.08, 12, '2023-01-01', '2024-01-01'),
(2, 6000.00, 0.1, 6, '2023-02-01', '2023-08-01'),
(3, 4500.00, 0.12, 8, '2023-03-01', '2023-10-01'),
(4, 7000.00, 0.09, 10, '2023-04-01', '2023-12-01'),
(5, 2500.00, 0.11, 12, '2023-05-01', '2024-05-01'),
(6, 6000.00, 0.1, 8, '2023-06-01', '2024-02-01'),
(7, 3500.00, 0.13, 10, '2023-07-01', '2024-04-01'),
(8, 8000.00, 0.11, 12, '2023-08-01', '2024-08-01'),
(9, 4000.00, 0.14, 6, '2023-09-01', '2024-03-01'),
(10, 9000.00, 0.12, 8, '2023-10-01', '2024-05-01');

--- Inserção de dados na tabela 'actions_log'
INSERT INTO [actions_log] (user_id, action_date, table_name, description)
VALUES
(1, GETDATE(), 'transaction', 'Realizada transação de débito'),
(2, GETDATE(), 'application', 'Solicitado investimento em ações'),
(3, GETDATE(), 'loan', 'Solicitado empréstimo pessoal'),
(4, GETDATE(), 'transaction', 'Realizada transação de crédito'),
(5, GETDATE(), 'card', 'Adicionado novo cartão de crédito'),
(6, GETDATE(), 'bank_account', 'Criada nova conta bancária'),
(7, GETDATE(), 'application', 'Solicitado investimento em ações'),
(8, GETDATE(), 'loan', 'Solicitado empréstimo pessoal'),
(9, GETDATE(), 'transaction', 'Realizada transação de débito'),
(10, GETDATE(), 'card', 'Adicionado novo cartão de crédito');
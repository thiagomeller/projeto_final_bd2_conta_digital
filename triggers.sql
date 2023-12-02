--Trigger para mudança de saldo
create trigger ti_transaction on [transaction] for insert as 
begin
	if ROWCOUNT_BIG() = 0
		return

	declare @user_id int,
		@created_at datetime,
		@description varchar(50),
		@type varchar(20),
		@value numeric(19, 2),
		@balance_change_type char(1),
		@credit_limit numeric(19, 2)

	select @user_id = user_id,
		@created_at = created_at,
		@description = description,
		@type = [type],
		@value = value,
		@balance_change_type = balance_change_type 
	from inserted

	select @credit_limit = credit_limit
	from bank_account
	where @user_id = bank_account.user_id

	if @type like 'Cartão de Crédito' 
		begin
			if @value <= @credit_limit
				begin
					update	bank_account 
						set credit_limit = credit_limit - @value
					where user_id = @user_id
				end
			else
				begin
					RAISERROR('Limite de cartão insuficiente para realizar essa transação!', 16, 1)
				end
		end
	else
		begin
			if @balance_change_type like 'C'
				begin
					update bank_account 
						set balance = balance + @value
					where user_id = @user_id
				end
			else 
				begin
					update bank_account 
						set balance = balance - @value
					where user_id = @user_id
				end
		end
	
end

--Triggers para popular actions_log
create trigger tiud_application on [application] for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'application', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'application', (select * from deleted for JSON PATH))
	
end

create trigger tiud_bank_account on [bank_account] for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'bank_account', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'bank_account', (select * from deleted for JSON PATH))
	
end

create trigger tiud_card on card for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'card', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'card', (select * from deleted for JSON PATH))
	
end

create trigger tiud_loan on [loan] for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'loan', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'loan', (select * from deleted for JSON PATH))
	
end

create trigger tiud_person on [person] for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'person', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'person', (select * from deleted for JSON PATH))
	
end

create trigger tiud_transaction on [transaction] for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'transaction', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'transaction', (select * from deleted for JSON PATH))
	
end

create trigger tiud_user on [user] for insert, update, delete as
begin
	if ROWCOUNT_BIG() = 0
		return

	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'user', (select * from inserted for JSON PATH))
	insert into actions_log 
		values(CURRENT_USER, GETDATE(), 'user', (select * from deleted for JSON PATH))
	
end


--Ações para as triggers

insert into [transaction] 
values(1, GETDATE(), 'Boleto', 'Pagamento conta energia', 200, 'D') 

insert into [transaction] 
values(2, GETDATE(), 'TED', 'Venciemnto prestação de serviço', 200, 'C')

insert into [transaction] 
values(4, GETDATE(), 'Depósito', 'Recebimento', 200, 'C')

insert into [transaction]
values(1, GETDATE(), 'Cartão de Crédito', 'Compra', 800, 'D')


select * from bank_account

select * from [transaction]

select * from actions_log
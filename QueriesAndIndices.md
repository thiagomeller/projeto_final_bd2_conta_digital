<h3>1- Quais são os CPNJs dos usuários que fizeram emprestimo mesmo tendo saldo negativo?</h3>
select (select cnpj from person where u.id = person.id) as CNPJ, balance from loan l
inner join bank_account ba on ba.user_id = l.user_id
inner join [user] u on u.id = l.user_id 
where ba.balance < 0

<h4>Índices pergunta 1</h4>
create index idx_cnpj on person (id) include (cnpj)
create index idx_balance on bank_account (balance) include (user_id)

<h5>Antes:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/8df55708-2965-464e-b169-592a8f3e1550"/>

<h5>Depois:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/f4729054-b34f-4776-b451-ea03945576da"/>


<h3>2- Quais são os nomes das instituições com mais de um cartão de crédito cadastrado que fizeram transações nos últimos 30 dias?</h3>
select user_id, created_at, description, value, balance_change_type from [transaction] where created_at between DATEADD(day, -30, getdate()) and GETDATE()

<h4>Índices pergunta 1</h4>
create index idx_query on [transaction] (created_at) include (user_id, description, value, balance_change_type)

<h5>Antes:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/11e41df9-502a-4a83-95de-4b2d6f05ee49"/>

<h5>Depois:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/56de53fc-3e19-49bb-8b26-bec4ac53aa02"/>


<h3>3- Quais os nomes das empresas que aplicaram nos fundos com mais rendimento desse ano (2023)?</h3>
select (select institution_name from person p where p.id = u.person_id) as institution_name,
	application_type,
	interest_rate
from application a
inner join [user] u on a.user_id = u.id
where interest_rate = (select max(interest_rate) from application)

<h4>Índice pergunta 3</h4>
create index idx_interest_rate on application (interest_rate) include (application_type)
create index idx_institution_name on person (id) include (institution_name)
create index idx_person_id on [user] (id) include (person_id)

<h5>Antes:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/ad465596-7ab7-475d-9275-92aaaa513e52"/>

<h5>Depois:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/e084cef1-acbd-49d7-839a-eac96bcd62d6"/>


<h3>4- Qual o usuário que teve o maior número de créditos realizados para a sua conta e qual é o total desses depositos?</h3>
select user_id, dbo.get_credits_sum(user_id) as credit_actions, sum(value) as valor_total
from [transaction]
where dbo.get_credits_sum(user_id) = (select max(dbo.get_credits_sum(user_id)) from [transaction])
group by user_id

<h4>Índice pergunta 4</h4>
create index idx_balance_change on [transaction] (balance_change_type) include (user_id)

<h5>Antes:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/5cc7dd69-376b-4e82-bbd7-b7ea195e42d8" />

<h5>Depois:</h5>
<img src="https://github.com/thiagomeller/projeto_final_bd2_conta_digital/assets/42391994/553d9c0c-2e96-4ac7-ae2d-f918eaf1823d" />

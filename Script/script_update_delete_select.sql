

#FAÇA AQUI OS COMANDOS SQL PARA ATINGIR OS OBJETIVOS A SEGUIR:

#PRÁTICA COM UPDATE:
#Altere o status para ‘Vip’ nos registros dos clientes com renda familiar maior que R$ 3.000,00.
UPDATE CLIENTE SET status_cli =  'Vip' WHERE renda_cli > 3000;
#Altere o status para ‘Médio’ nos registros dos clientes com renda familiar entre R$ 1.000,00 e R$3.000,00.SELECT * FROM cliente WHERE renda_cli BETWEEN 1000 and 3000
UPDATE CLIENTE SET status_cli = 'Médio' WHERE renda_cli BETWEEN 1000 and 3000;

#Altere o status para ‘Simples’ nos registros dos clientes com renda familiar menor que R$ 1.000,00.SELECT * FROM CLIENTE WHERE renda_cli < 1000
UPDATE CLIENTE SET status_cli = 'Simples' WHERE renda_cli < 1000;

#Dê um aumento de salário de 30% para os funcionários do sexo ‘Feminino’.
UPDATE FUNCIONARIO SET salario_func = salario_func + (salario_func * 0.30) where sexo_func = 'Feminino';

#Dê um aumento de R$ 50,00 no salário dos funcionários com função de ‘Vendedor’.
UPDATE FUNCIONARIO SET salario_func = salario_func + 50 WHERE funcao_func = 'Vendedor';

#Reduza em 10% no salário dos funcionários com função de ‘Mecânico’ e sexo ‘Masculino’.
UPDATE FUNCIONARIO SET salario_func = salario_func - (salario_func * 0.10) WHERE funcao_func = 'Mecânico';

#Reduza o valor em 30% nos produtos com estoque maior que 20.
UPDATE PRODUTO SET valor_prod = valor_prod - (valor_prod * 0.30) WHERE estoque_prod > 20;

#Dê um desconto de 15% no valor total das vendas com forma de pagamento ‘A vista’ e com valor maior do que R$ 1.000,00.
UPDATE VENDA SET valor_vend = valor_vend - (valor_vend * 0.15) WHERE forma_pag_vend = 'A vista'  and valor_vend > 1000;

#PRÁTICA COM SELECT:
#Selecione o nome e o e-mail dos clientes que possuem e-mails do provedor ‘Hotmail.com’ ou ‘Gmail.com’ ordenados por e-mail;
SELECT nome_cli, email_cli  FROM CLIENTE where email_cli like '%gmail.com' or '%hotmail.com' order by email_cli;

#Selecione os clientes nascidos após 01/01/1990 e ordene o resultado por data de nascimento em ordem decrescente;
SELECT * FROM CLIENTE WHERE data_Nasc_cli > '1990-01-01' order by data_Nasc_cli DESC;

#Selecione os funcionários com salários entre R$ 500,00 e R$ 4.000,00 e do sexo ‘Feminino’. Ordene o resultado nome do funcionário.
SELECT * FROM FUNCIONARIO WHERE salario_func BETWEEN 500 AND 4000 AND sexo_func = 'Feminino' order by nome_func;

#Selecione os clientes com os sobrenomes ‘Silva’ ou ‘Souza’ e do sexo ‘Feminino’ e com renda entre R$ 500,00 e R$ 10.000,00 e nascidos após 01/01/1980.
SELECT * FROM CLIENTE WHERE nome_cli LIKE '%Silva' or '%Souza' AND sexo_cli = 'Feminino' AND renda_cli BETWEEN 500 AND 10000 AND data_Nasc_cli > 1980-01-01;

#Mostre quantos clientes existem cadastrados no banco de dados.
SELECT Count(*) AS Quantidade_Clientes FROM CLIENTE ;

#Mostre a maior renda entre os clientes cadastrados no banco de dados.
SELECT MAX(renda_cli) AS Maior_Renda FROM CLIENTE;

#Mostre o salário médio entre os funcionários cadastrados no banco de dados.
SELECT AVG(salario_func) AS Salario_Medio FROM FUNCIONARIO;

#Mostre a soma do estoque de todos os produtos cadastrado no banco de dados.
SELECT SUM(estoque_prod) AS Soma_Estoque FROM PRODUTO;

#Mostre o menor estoque entre os produtos cadastrados no banco de dados.
SELECT MIN(estoque_prod) AS Soma_Estoque FROM PRODUTO;

#Selecione os pagamentos que possuem a chave estrangeira de compra NULA. 
SELECT * FROM PAGAMENTO WHERE cod_comp_fk IS NULL;

#Mostre a soma do valor das vendas realizadas entre 01/01/2010 e 31/12/2018;
SELECT SUM(valor_vend) FROM VENDA WHERE data_vend >= '2010-01-01' and data_vend <= '2018-12-2018';

#PRÁTICA DELETE:
#Exclua os recebimentos com forma de recebimento em ‘Cheque’ e com valor entre R$ 100,00 a R$ 300,00.
DELETE FROM RECEBIMENTO WHERE forma_rec = 'Cheque' AND valor_rec BETWEEN 100 AND 300;

#Exclua os recebimentos realizados entre 01/01/2017 e 30/06/2017 com valor superior a R$ 500,00.
DELETE FROM RECEBIMENTO WHERE data_vencimento_rec >= '2017-01-01' and data_vencimento_rec <= '2017-06-30' AND valor_rec > 500;

#Exclua os pagamentos realizados com chave estrangeira de despesa e com valor superior a R$ 400,00.
DELETE FROM PAGAMENTO WHERE cod_desp_fk IS NOT NULL AND valor_pag > 400;

#Exclua os pagamentos realizados com chave estrangeira de compra e com valor menor que R$ 800,00 e realizados entre 01/01/2017 e 30/06/2017.
DELETE FROM PAGAMENTO WHERE cod_comp_fk IS NOT NULL AND valor_pag < 800 AND data_pag >= '2017-01-01' AND data_pag <='2017-06-30'
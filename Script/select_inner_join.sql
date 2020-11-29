
#1 - Selecione o código, nome, cpf, nome do Sexo, dados do Endereço, nome da Cidade e nome do Estado dos Clientes.
SELECT cli.cod_cli AS Código,
cli.nome_cli AS Nome,
cli.cpf_cli AS CPf,
sex.nome_sex AS Sexo,
ende.rua_end AS Rua,
ende.numero_end AS Numero,
ende.bairro_end AS Bairro, 
cid.nome_cid as Cidade,
est.nome_est AS Estado
FROM cliente AS cli
INNER JOIN sexo AS sex ON sex.cod_sex = cli.cod_sex_fk
INNER JOIN endereco AS ende ON ende.cod_end = cli.cod_end_fk
INNER JOIN cidade AS cid ON cid.cod_cid = ende.cod_cid_fk
INNER JOIN estado AS est ON est.cod_est = cid.cod_est_fk;

#2 - Selecione o código, nome, cpf, função, nome do Sexo, dados do Endereço, nome da Cidade, nome do Estado e nome do Departamento dos Funcionários.
SELECT 
func.nome_func as Nome,
func.cpf_func as CPF,
func.função_func as Função,
ende.rua_end as Rua,
ende.numero_end as Numero,
ende.bairro_end as Bairro,
cid.nome_cid as Cidade,
est.nome_est as Estado,
dep.nome_dep as Departamento
FROM funcionario as func
INNER JOIN endereco as ende ON ende.cod_end = func.cod_end_fk
INNER JOIN cidade as cid ON cid.cod_cid = ende.cod_cid_fk
INNER JOIN estado as est ON est.cod_est = cid.cod_est_fk
INNER JOIN departamento as dep ON dep.cod_dep = func.cod_dep_fk;

#3 - Selecione o nome do Cliente e os dados dos seus Carros.
SELECT cli.nome_cli  as Cliente,
car.modelo_car as Modelo,
car.cor_car as Cor,
car.portas_car as Portas,
car.placa_car as Placa,
car.marcar_car as Marca
FROM cliente as cli
JOIN carro as car ON car.cod_cli_fk = cli.cod_cli;

#4 - Selecione código e data da Compra, nome do Fornecedor e os nomes, quantidade e valor dos Produtos comprados.
SELECT com.cod_comp as Código,
com.data_comp as Data_compra,
forn.razãosocial_forn as Razão,
forn.nomefantasial_forn as Nome,
itcom.quant_itenc as Quantidade,
itcom.valor_itenc as Valor
FROM compra as com
INNER JOIN fornecedor as forn ON  forn.cod_forn = com.cod_forn_fk
JOIN itens_compra as itcom ON itcom.cod_comp_fk = com.cod_comp;

#5 - Selecione o código e data da Venda, nome do Cliente e os nomes, quantidade e valor dos Produtos vendidos.
SELECT 
vend.cod_vend as Código,
vend.data_vend as Data_venda,
cli.nome_cli as Cliente,
itven.quant_itenv as Quantidade,
itven.valor_itenv as Valor
FROM venda as vend
INNER JOIN cliente as cli ON cli.cod_cli = vend.cod_cli_fk
JOIN itens_venda as itven ON itven.cod_vend_fk = vend.cod_vend;

#6 - Selecione o código, a data, o valor e a forma de pagamento dos Pagamentos, o código e data do Caixa, o nome do Funcionário e a descrição, data de vencimento e o valor da Despesa.
SELECT 
pag.cod_pag as Código_Pagamento,
pag.data_pag as Data_Pagamento,
pag.valor_pag as Valor,
pag.formapagamento_pag as Forma_Pagamento,
cai.cod_cai as Código_Caixa,
cai.dataabertura_cai as Data_Caixa,
func.nome_func as Funcionario,
des.descrição_desp as Descrição,
des.datavencimento_desp as Data_Vencimento,
des.valor_desp as Valor
FROM pagamentos as pag
INNER JOIN caixa as cai ON cai.cod_cai = pag.cod_cai_fk
INNER JOIN funcionario as func ON func.cod_func = pag.cod_func_fk
INNER JOIN despesas as des on des.cod_desp = pag.cod_desp_fk;

#7 - Selecione o código e o nome do Fornecedor, assim como a quantidade e a soma do valor total das Compras que ele participou. Dica: Use subconsulta com funções.
SELECT 
fornecedor.cod_forn as 'Código',
fornecedor.razãosocial_forn as 'Nome Fornecedor',
(SELECT COUNT(cod_comp) from compra where compra.cod_forn_fk = fornecedor.cod_forn) as 'Quantidade Compra',
(SELECT SUM(valortotal_comp) from compra where compra.cod_forn_fk = fornecedor.cod_forn) as 'Soma Compra'
FROM fornecedor;

#8 -Secione o código e nome do Cliente, assim como o valor médio e a soma do valor total das Vendas que ele participou. Dica: Use subconsulta com funções.
SELECT 
cliente.cod_cli as 'Código',
cliente.nome_cli as 'Nome Cliente',
(SELECT AVG(valortotal_vend) FROM venda where venda.cod_cli_fk = cliente.cod_cli) as 'Media Vendas',
(SELECT SUM(valortotal_vend) FROM venda where venda.cod_cli_fk = cliente.cod_cli) as 'Soma Vendas'
FROM cliente;

#9 - Selecione o código, a data e a forma de pagamento da Venda, o nome do Cliente, assim como a quantidade e a soma do valor total dos Itens Vendidos em cada Venda.  Dica: Use subconsulta com funções.
SELECT 
venda.cod_vend as Código,
venda.data_vend as Data,
venda.formpag_vend as 'Forma Pagemento',
cliente.nome_cli as Clinte,
(select count(cod_itenv) from itens_venda where itens_venda.cod_vend_fk = venda.cod_vend) as Quantidade,
(select sum(quant_itenv  *  valor_itenv) from itens_venda where itens_venda.cod_vend_fk = venda.cod_vend) as Soma
FROM
cliente, venda
where 
(venda.cod_cli_fk = cliente.cod_cli);

#10 - Selecione o nome do Funcionário, assim como a quantidade e a soma do valor total das Vendas realizadas por cada vendedor. Dica: Use subconsulta com funções.
SELECT 
nome_func as Vendedor,
(SELECT COUNT(cod_vend) FROM venda where venda.cod_func_fk = funcionario.cod_func) as 'Quantidade Vendas',
(SELECT SUM(valortotal_vend) FROM venda where venda.cod_func_fk = funcionario.cod_func) as 'Soma Vendas'
FROM funcionario;

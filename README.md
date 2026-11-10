# PLENA VISÃO VISTORIA
## Projeto Acadêmico — Modelagem de Banco de Dados

### Integrantes do Grupo

| Nome Completo | RGM | GitHub |
|---|---|---|
| Gabriel da Silva Santos | 47256818 | [GabrielSilvaSantos-tech](https://github.com/GabrielSilvaSantos-tech) |
| Gustavo Francisco dos Santos | A informar | A informar |
| Henrique Constantino | 47219190 | [RiqueCosta27](https://github.com/RiqueCosta27) |
| João Victor Rodrigues de Araujo | 47585650 | [joaoaraujo2023-crypto](https://github.com/joaoaraujo2023-crypto) |

### 1. Apresentação do Projeto

O projeto Plena Visão Vistoria tem como objetivo desenvolver uma estrutura de banco de dados para auxiliar no gerenciamento das atividades de uma empresa de vistoria veicular.

A proposta contempla o cadastro e controle de clientes, veículos, vistorias, vistoriadores, lojas parceiras, pagamentos e informações financeiras.

### 2. Objetivo

Desenvolver um banco de dados relacional utilizando MySQL, aplicando conceitos de modelagem de dados, relacionamentos, chaves primárias e estrangeiras, integridade referencial e consultas SQL.

### 3. Tecnologias Utilizadas

- MySQL
- MySQL Workbench
- SQL
- GitHub

### 1.1 Revisão do Modelo Conceitual

O modelo conceitual da Plena Visão Vistoria foi desenvolvido para representar as principais informações e os relacionamentos necessários ao funcionamento da empresa.

O Diagrama Entidade-Relacionamento (DER) contempla as seguintes entidades:

- CLIENTE
- VEICULO
- VISTORIADOR
- VISTORIA
- TIPO_VISTORIA
- PRECO_VISTORIA
- LOJA
- PAGAMENTO
- FECHAMENTO_LOJA
- ITEM_FECHAMENTO

O modelo também apresenta os atributos de cada entidade, seus relacionamentos e as respectivas cardinalidades, representando as regras de negócio identificadas durante o desenvolvimento do projeto.

O DER foi utilizado como base para a construção do modelo lógico e posteriormente para a implementação do banco de dados no MySQL.

**Documento:** DER Conceitual da Plena Visão Vistoria.

### 1.2 Conversão do Modelo Conceitual para o Modelo Lógico

Após a elaboração do modelo conceitual, foi realizada a conversão do DER para o modelo lógico relacional.

Nesse processo, as entidades foram transformadas em tabelas, os atributos passaram a representar colunas e os relacionamentos foram implementados por meio de chaves estrangeiras (FKs), conforme as regras de cardinalidade.

O banco de dados foi estruturado no MySQL, contemplando as 10 tabelas do projeto:

- CLIENTE
- VEICULO
- VISTORIADOR
- VISTORIA
- TIPO_VISTORIA
- PRECO_VISTORIA
- LOJA
- PAGAMENTO
- FECHAMENTO_LOJA
- ITEM_FECHAMENTO

Essa conversão permitiu organizar os dados e estabelecer os relacionamentos necessários para o funcionamento do sistema.

### 1.3 Definição das Chaves Primárias e Estrangeiras

Durante a construção do modelo lógico, foram definidas as chaves primárias (PKs) e estrangeiras (FKs) para garantir a identificação dos registros e estabelecer os relacionamentos entre as tabelas.

As chaves primárias identificam cada registro de forma única, enquanto as chaves estrangeiras permitem relacionar informações entre diferentes tabelas.

No banco de dados Plena Visão Vistoria, essas chaves foram utilizadas nas tabelas CLIENTE, VEICULO, VISTORIADOR, VISTORIA, TIPO_VISTORIA, PRECO_VISTORIA, LOJA, PAGAMENTO, FECHAMENTO_LOJA e ITEM_FECHAMENTO.

A implementação das chaves contribui para a integridade referencial e a organização das informações armazenadas.

### 1.4 Normalização do Banco de Dados

A estrutura do banco de dados foi organizada com o objetivo de reduzir a duplicidade de informações e melhorar a consistência dos registros.

Durante a modelagem, foram consideradas as formas normais para organizar os dados e estabelecer relações adequadas entre as tabelas.

A separação das informações em tabelas específicas, como CLIENTE, VEICULO, VISTORIA e PAGAMENTO, contribui para evitar a repetição desnecessária de dados e facilitar as operações de consulta, inclusão e atualização.

Essa organização busca garantir maior integridade e facilitar a manutenção do banco de dados.

### 1.5 Justificativas das Decisões de Modelagem

As decisões de modelagem foram definidas com base nas necessidades identificadas para o gerenciamento das atividades da Plena Visão Vistoria.

A separação das informações em tabelas específicas permite organizar os dados de clientes, veículos, vistorias, pagamentos e lojas parceiras.

A utilização de chaves primárias e estrangeiras permite estabelecer relações entre os registros, enquanto as restrições de integridade ajudam a evitar inconsistências.

A estrutura desenvolvida busca facilitar o controle das operações, a consulta de informações e o acompanhamento financeiro da empresa.

### 1.6 BI/IA — Business Intelligence e Inteligência Artificial

O banco de dados da Plena Visão Vistoria permite organizar informações que podem ser utilizadas futuramente em análises gerenciais e apoio à tomada de decisões.

Com o uso de ferramentas de Business Intelligence (BI), será possível analisar dados como quantidade de vistorias realizadas, valores cobrados, pagamentos recebidos e movimentações das lojas parceiras.

A Inteligência Artificial (IA) também poderá ser utilizada futuramente para auxiliar na identificação de padrões, elaboração de relatórios e análise de informações.

Essas possibilidades podem contribuir para melhorar o acompanhamento das atividades e o planejamento da empresa.

## 5. Documentação dos Modelos

### 5.1 Diagrama Entidade-Relacionamento (DER)

O DER apresenta a estrutura conceitual do projeto, identificando as entidades, seus atributos, relacionamentos e cardinalidades.

[Visualizar DER Conceitual](docs/DER_Conceitual_Plena_Visao.pdf)

[Visualizar Modelo Lógico](docs/Modelo_Logico_Plena_Visao.pdf)

### 5.2 Modelo Lógico

O modelo lógico apresenta a organização das tabelas, seus campos, tipos de dados, chaves primárias e chaves estrangeiras.

[Visualizar Script SQL](docs/Plena_Visao_Vistoria.sql)

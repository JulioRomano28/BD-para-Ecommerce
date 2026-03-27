# 🛒 E-Commerce Sales Analytics

![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data_Analysis-005571?style=for-the-badge)

## 📌 Visão Geral
Este projeto é uma análise de banco de dados para um cenário fictício de e-commerce. O objetivo principal é demonstrar habilidades avançadas em SQL Server para modelagem de dados, tratamento de informações e, principalmente, extração de insights de negócios através de consultas analíticas complexas.

## 🎯 O Problema de Negócio
A diretoria do e-commerce precisa de visibilidade sobre o desempenho das vendas, o comportamento dos clientes e a rentabilidade do portfólio de produtos. As perguntas de negócio que este projeto responde são:
1. Qual é a tendência de receita mensal da empresa?
2. Quem são os nossos "Top Clientes" (aqueles que trazem mais faturamento)?
3. Quais produtos compõem a Curva ABC (Regra de Pareto) do nosso faturamento?

## 🛠️ Tecnologias Utilizadas
* **Banco de Dados:** Microsoft SQL Server
* **Linguagem:** T-SQL (Transact-SQL)
* **Técnicas Aplicadas:** DDL (Data Definition Language), DML (Data Manipulation Language), CTEs (Common Table Expressions), Window Functions (`RANK`, `SUM OVER`), Agregações e Joins.

## 🗂️ Modelagem de Dados (Diagrama ER)
O banco de dados segue um modelo relacional otimizado para transações de e-commerce.

> **Nota para você:** *Gere uma imagem do seu diagrama em sites gratuitos como o [dbdiagram.io](https://dbdiagram.io/) e coloque o link da imagem aqui.*
> 
> `![Diagrama ER](link_da_sua_imagem_aqui.png)`

As principais tabelas são:
* `Customers`: Dados demográficos e de contato dos clientes.
* `Products`: Catálogo de produtos e preços.
* `Orders`: Cabeçalho das transações de vendas.
* `OrderItems`: Linhas de detalhe de cada pedido (relacionamento N:N entre Pedidos e Produtos).

## 🔍 Principais Insights Extraídos

Ao executar o script `03_business_queries.sql`, chegamos às seguintes conclusões:

* **Análise de Faturamento Mensal:** Foi possível formatar e agregar os dados de tempo para entender a sazonalidade das vendas, facilitando a criação de dashboards futuros.
* **Retenção e Fidelização:** Utilizando `Window Functions`, criamos um ranking dinâmico de clientes. Descobrimos que o cliente *[Nome do Cliente do seu Mock Data]* é responsável pelo maior volume de compras.
* **Curva ABC e Regra de Pareto:** A análise provou que uma pequena parcela do catálogo é responsável pela maior parte da receita. Isso permite que a equipe de compras foque no reabastecimento estratégico de produtos específicos, como *[Nome do Produto do seu Mock Data]*.

## 🚀 Como Executar o Projeto
Se você quiser replicar este projeto na sua máquina, siga os passos abaixo:

1. Clone este repositório:
   ```bash
   git clone [https://github.com/](https://github.com/)[seu-usuario]/sql-ecommerce-analytics.git

# Data Warehouse - Hotel

Este projeto consiste na implementação de um **Data Warehouse (DW)** para um sistema de hotel, utilizando **MySQL** e aplicando conceitos de **Business Intelligence (BI)**.

---

## Objetivo

Desenvolver um Data Warehouse capaz de armazenar e analisar dados relacionados a hospedagem e consumo de clientes, permitindo consultas analíticas para apoio à tomada de decisão.

---

## Tecnologias Utilizadas

* MySQL
* phpMyAdmin
* SQL

---

## Estrutura do Projeto

O modelo foi desenvolvido utilizando o conceito de **tabelas fato e dimensões**.

### Tabelas Dimensão

* `hospede` → informações dos clientes
* `tempo` → controle de datas
* `agencia` → origem da reserva
* `apto` → dados dos apartamentos
* `produto` → itens consumidos
* `servico` → serviços oferecidos

### Tabelas Fato

* `hospedagem` → dados de estadia e faturamento
* `consumo` → dados de consumo durante a hospedagem

---

## Implementação

Foram criadas todas as tabelas com:

* Chaves primárias e estrangeiras
* Constraints de integridade
* Índices para otimização de consultas

---

## Carga de Dados

Foram gerados **100 registros aleatórios** para cada tabela fato (`hospedagem` e `consumo`), utilizando funções do MySQL (`RAND()`).

Os dados foram:

1. Inseridos diretamente no banco
2. Exportados em formato **CSV** via phpMyAdmin
3. Preparados para reimportação, simulando um processo de ETL

---

## Consultas Analíticas

O Data Warehouse permite análises como:

### Faturamento por mês

```sql
SELECT 
    t.mes,
    SUM(h.Valor_Faturado) AS total_faturamento
FROM hospedagem h
JOIN tempo t ON h.Tempo_idTempo = t.idTempo
GROUP BY t.mes;
```

### Faturamento por hóspede

```sql
SELECT 
    hp.nome,
    SUM(h.Valor_Faturado) AS total_gasto
FROM hospedagem h
JOIN hospede hp ON h.Hospede_idHospede = hp.idHospede
GROUP BY hp.nome
ORDER BY total_gasto DESC;
```

### Consumo por produto

```sql
SELECT 
    p.descricao,
    SUM(c.quantidade) AS total_vendido
FROM consumo c
JOIN produto p ON c.Produto_idProduto = p.idProduto
GROUP BY p.descricao;
```

---

## Resultados

O projeto demonstra a utilização de um Data Warehouse para:

* Análise de faturamento
* Comportamento de clientes
* Consumo de produtos e serviços
* Apoio à tomada de decisão

---

## Conclusão

A implementação evidencia como técnicas de **Business Intelligence** podem ser aplicadas para transformar dados operacionais em informações estratégicas.


# Data Quality: SQL Sample

Este projeto simula uma base de dados com erros comuns de qualidade da informação, com o objetivo de aplicar regras de validação e identificar inconsistências utilizando comandos SQL em SQLite.

## 💡 Objetivo

Demonstrar, de forma prática, como utilizar SQL para validar, padronizar e detectar problemas em bases de dados — como e-mails inválidos, CPFs duplicados, dados nulos ou inconsistentes.

## 🛠 Tecnologias utilizadas
- SQLite
- SQL puro
- SQLite Online (https://sqliteonline.com) para execução e testes

## 📊 Estrutura do Projeto

| Arquivo | Descrição |
|--------|-----------|
| `create_tables.sql` | Criação das tabelas com colunas relevantes para análise |
| `insert_data.sql` | Inserção de dados fictícios, com proposital presença de erros |
| `data_validation.sql` | Queries para identificação de problemas de qualidade |

## 🔍 Exemplos de Regras Aplicadas
- E-mails com formato inválido
- CPFs duplicados
- Datas de nascimento futuras
- Campos obrigatórios nulos
- IDs inconsistentes

## 📌 Observações
Este projeto é um exercício de estudo voltado para práticas de validação e qualidade de dados.  
Futuramente, novas regras e tabelas poderão ser adicionadas.

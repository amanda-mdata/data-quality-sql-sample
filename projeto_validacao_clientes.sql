-- ===================================
-- 1. CRIAÇÃO DA TABELA
-- ===================================

CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT,
    cpf TEXT,
    data_nascimento TEXT,
    telefone TEXT
);

-- ===================================
-- 2. INSERÇÃO DE DADOS FICTÍCIOS
-- ===================================

INSERT INTO clientes (id, nome, email, cpf, data_nascimento, telefone) VALUES
(1, 'Ana Silva', 'ana.silva@email.com', '12345678900', '1990-05-20', '11999999999'),
(2, 'Bruno Souza', 'brunoemail.com', '12345678900', '2001-09-10', NULL),  -- e-mail inválido, CPF duplicado, telefone ausente
(3, 'Carlos Pereira', 'carlos@p', '98765432100', '2026-01-01', '11988888888'),  -- data futura, e-mail inválido
(4, 'Débora Lima', NULL, NULL, '1985-12-12', '11977777777'),  -- e-mail e CPF nulos
(5, 'Eduardo Silva', 'eduardo@@email.com', '65432198700', '1995-07-30', '');  -- e-mail inválido, telefone vazio

-- ===================================
-- 3. REGRAS DE VALIDAÇÃO DE DADOS
-- ===================================

-- E-mails inválidos
Select * FROM clientes
Where email not LIKE '%@%.%' or email IS NULL

-- CPFs duplicados
select cpf, COUNT(*) AS total
FROM clientes
where cpf IS NOT NULL 
GROUP BY cpf 
HAVING COUNT(*) >1;

-- Datas de nascimento no futuro
SELECT * FROM clientes
WHERE DATE(data_nascimento) > DATE('now');

-- Telefones vazios ou nulos
SELECT * FROM clientes
WHERE telefone IS NULL OR telefone = '';

-- Clientes com e-mails válidos e CPF não duplicado
SELECT * FROM clientes
WHERE email LIKE '%@%.%'
  AND cpf NOT IN (
      SELECT cpf
      FROM clientes
      WHERE cpf IS NOT NULL
      GROUP BY cpf
      HAVING COUNT(*) > 1
  )
  AND email IS NOT NULL;

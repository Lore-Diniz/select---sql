
-- 1. 
SELECT * 
FROM Aluno;

-- 2. 
SELECT nome, nota1 
FROM Aluno;

-- 3. 
SELECT * 
FROM Aluno
WHERE nota2 > 8;

-- 4. Mostrar os alunos que nasceram após o ano de 2000
SELECT * 
FROM Aluno
WHERE data_nascimento > '2000-12-31';

-- 5. 
SELECT nome, mensalidade
FROM Curso
WHERE mensalidade > 600;

-- 6. 
SELECT nome, ano
FROM Turma
ORDER BY ano ASC;

-- 7. 
SELECT ano, COUNT(*) AS quantidade_turmas
FROM Turma
GROUP BY ano;

-- 8. 
SELECT turma_id, AVG(nota1) AS media_nota1
FROM Aluno
GROUP BY turma_id;

-- 9. 
SELECT ano, COUNT(*) AS quantidade_turmas
FROM Turma
GROUP BY ano
HAVING COUNT(*) > 2;

-- 10.
SELECT nome, mensalidade
FROM Curso
ORDER BY mensalidade DESC;

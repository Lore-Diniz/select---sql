
-- COUNT: Quantos alunos estão cadastrados

SELECT COUNT(*) AS total_alunos
FROM Aluno;

-- MIN: Menor mensalidade entre todos os cursos

SELECT MIN(mensalidade) AS menor_mensalidade
FROM Curso;

-- MAX: Maior nota1 registrada entre todos os alunos

SELECT MAX(nota1) AS maior_nota1
FROM Aluno;

-- SUM: Soma total das mensalidades dos cursos

SELECT SUM(mensalidade) AS total_mensalidades
FROM Curso;

-- AVG: Média geral da nota2 dos alunos

SELECT AVG(nota2) AS media_geral_nota2
FROM Aluno;

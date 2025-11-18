import sqlite3

# 1. 
conexao = sqlite3.connect("escola_v2.db")
cursor = conexao.cursor()

print("Conectado ao banco escola_v2.db\n")

# 2. 
print("=== TABELA ALUNO ===")
cursor.execute("SELECT * FROM Aluno;")
alunos = cursor.fetchall()
for aluno in alunos:
    print(aluno)

print("\n")

# 3. 
print("=== TOP 10 MÉDIAS DOS ALUNOS ===")
cursor.execute("""
    SELECT nome, (nota1 + nota2) / 2.0 AS media
    FROM Aluno
    ORDER BY media DESC
    LIMIT 10;
""")
top10 = cursor.fetchall()
for aluno in top10:
    print(aluno)

print("\n")

# 4. 
print("=== LEFT JOIN ALUNO x TURMA ===")
cursor.execute("""
    SELECT *
    FROM Aluno
    LEFT JOIN Turma
    ON Aluno.turma_id = Turma.id;
""")
join_resultado = cursor.fetchall()
for linha in join_resultado:
    print(linha)

print("\n")

# 5. 
print("=== ALUNOS DA TURMA 2 (LEFT JOIN) ===")
cursor.execute("""
    SELECT *
    FROM Aluno
    LEFT JOIN Turma
    ON Aluno.turma_id = Turma.id
    WHERE Turma.id = 2;
""")
turma2 = cursor.fetchall()
for linha in turma2:
    print(linha)

# Fechando o banco
conexao.close()
print("\nConexão encerrada.")

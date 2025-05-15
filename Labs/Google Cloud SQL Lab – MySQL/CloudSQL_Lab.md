
# Google Cloud SQL Lab – MySQL

Este repositório contém um resumo das etapas realizadas no laboratório de criação e uso de uma instância **Cloud SQL com MySQL** na Google Cloud Platform.

## Objetivo

Aprender a:
- Criar uma instância Cloud SQL.
- Conectar-se à instância com o cliente `mysql`.
- Criar um banco de dados e inserir dados.
- Consultar os dados via terminal Cloud Shell.

---

## Tarefas Realizadas

### ✅ Tarefa 1: Criar uma instância do Cloud SQL

1. Acesse o console e vá em **SQL** > **Criar Instância**.
2. Escolha o mecanismo **MySQL**.
3. Configure:
   - **ID da instância**: `myinstance`
   - **Senha root**: gerar e salvar
   - **Versão**: MySQL 8
   - **Edição**: Empresarial
   - **Predefinição**: Desenvolvimento
   - **Região/Zona**: `<REGION>` / `<ZONE>`
4. Clique em **Criar Instância**.

---

### ✅ Tarefa 2: Conectar à instância via Cloud Shell

No Cloud Shell, conecte-se à instância:

```bash
gcloud sql connect myinstance --user=root
```

- Autorize a conexão.
- Digite a senha root.

---

### ✅ Tarefa 3: Criar banco de dados e popular

1. Criar banco:

```sql
CREATE DATABASE guestbook;
```

2. Criar tabela e inserir dados:

```sql
USE guestbook;

CREATE TABLE entries (
  guestName VARCHAR(255),
  content VARCHAR(255),
  entryID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(entryID)
);

INSERT INTO entries (guestName, content) VALUES ("first guest", "I got here!");
INSERT INTO entries (guestName, content) VALUES ("second guest", "Me too!");
```

3. Consultar os dados:

```sql
SELECT * FROM entries;
```

---

## Resultado Esperado

```text
+--------------+-------------------+---------+
| guestName    | content           | entryID |
+--------------+-------------------+---------+
| first guest  | I got here!       |       1 |
| second guest | Me too!           |       2 |
+--------------+-------------------+---------+
```

---

## Referência

Este laboratório faz parte do conteúdo oficial do [Google Cloud Skills Boost](https://www.cloudskillsboost.google/).


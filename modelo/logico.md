# Modelo lógico da biblioteca

As chaves primárias estão marcadas com `PK` e as chaves estrangeiras com
`FK -> tabela.coluna`.

```text
ALUNO (
  id_aluno PK,
  nome,
  turma
)

CATEGORIA (
  id_categoria PK,
  nome
)

LIVRO (
  id_livro PK,
  titulo,
  autor,
  ano_publicacao,
  id_categoria FK -> CATEGORIA.id_categoria
)

EMPRESTIMO (
  id_emprestimo PK,
  id_aluno FK -> ALUNO.id_aluno,
  id_livro FK -> LIVRO.id_livro,
  data_emprestimo,
  data_devolucao,
  prazo,
  status,
  multa
)
```

`EMPRESTIMO` é a tabela associativa do N:N entre `ALUNO` e `LIVRO`. Um aluno
pode ter muitos empréstimos e um livro pode ser emprestado muitas vezes ao
longo do tempo. `prazo` é um atributo de `EMPRESTIMO`, não uma tabela ou
entidade independente.

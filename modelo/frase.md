# O modelo do caso do trio

Feito na **Aula 01**, pelos três juntos. A biblioteca precisa saber quem são os
alunos cadastrados, quais livros existem e em qual categoria cada livro está,
além de registrar cada empréstimo, sua devolução e eventuais multas.

## Entidades

- **ALUNO**: `id_aluno`, `nome`, `turma`
- **LIVRO**: `id_livro`, `titulo`, `autor`, `ano_publicacao`, `id_categoria`
- **CATEGORIA**: `id_categoria`, `nome`
- **EMPRESTIMO**: `id_emprestimo`, `id_aluno`, `id_livro`,
  `data_emprestimo`, `data_devolucao`, `prazo`, `status`, `multa`

## Relacionamentos

Um **ALUNO** pode realizar vários empréstimos, e um **LIVRO** pode aparecer em
vários empréstimos ao longo do tempo. Portanto, **EMPRESTIMO** é a entidade
associativa do relacionamento N:N entre ALUNO e LIVRO. Os dados
`data_emprestimo`, `data_devolucao`, `prazo`, `status` e `multa` pertencem ao
empréstimo, isto é, ao encontro entre um aluno e um livro.

Cada **CATEGORIA** classifica vários livros, enquanto cada **LIVRO** pertence a
uma categoria (1:N). **PRAZO** não é entidade separada: é atributo próprio de
EMPRESTIMO.

# Ajustes da Aula 01

**Professor Diego**

Revisei a entrega do trio Otávio, Arthur e Maria. A contradição estava em
`PRAZO`: ele aparecia como uma entidade independente e, ao mesmo tempo, como
um dado que nascia do relacionamento entre aluno e empréstimo.

A solução adotada foi manter as quatro entidades necessárias para o caso:
`ALUNO`, `LIVRO`, `CATEGORIA` e `EMPRESTIMO`. `EMPRESTIMO` é a entidade
associativa do N:N entre `ALUNO` e `LIVRO`, e concentra os atributos que só
existem nesse encontro: `data_emprestimo`, `data_devolucao`, `prazo`, `status` e
`multa`. Assim, `PRAZO` deixa de ser uma quinta entidade e passa a ser
corretamente um atributo de `EMPRESTIMO`.

Também foram preservados os exercícios individuais da Aula 02, apenas com as
pastas padronizadas para `exercicios/otavio`, `exercicios/arthur` e
`exercicios/maria`. A pasta `projeto/` não faz parte deste ajuste.

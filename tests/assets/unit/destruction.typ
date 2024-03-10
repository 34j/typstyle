#let (n, ..) = layout-node(node, 0, ctx)

#grid(
  columns: (1fr,) * calc.min(3, authors.len()),
  gutter: 1em,
  ..authors.map(author => align(center, text(font: author-font, author))),
)

#let books = (
  Shakespeare: "Hamlet",
  Homer: ("The Odyssey", "The Iliad"),
  Austen: "Persuasion",
)

#let (Austen,) = books
Austen wrote #Austen.

#let (Homer: h) = books
Homer wrote #h.

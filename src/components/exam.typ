#let blank(width: 5em, ..args) = {
  assert(args.pos().len() <= 1, message: "blank accepts at most one content argument")
  assert(args.named().len() == 0, message: "unknown blank option")
  let it = args.pos().at(0, default: [])
  box(width: width, stroke: (bottom: 1pt),
    inset: (bottom: 20%, left: -10%, right: -10%))[
    #align(center)[#it]
  ]
}

#let judgment(label, body) = block(above: 0.7em, below: 0.6em)[
  #grid(columns: (2em, 1fr, 3em), gutter: 0pt,
    align(left)[#label.],
    [#set par(first-line-indent: 0pt)
      #body],
    align(right)[（　）],
  )
]

#let question(label, body) = block(above: 0.7em, below: 0.6em)[
  #grid(columns: (2em, 1fr), gutter: 0pt,
    align(left)[#label.],
    [#set par(first-line-indent: 0pt)
      #body],
    v(0.5em),
  )
]

#let subquestion(label, body) = block(above: 0.35em, below: 0.3em)[
  #grid(columns: (2.8em, 1fr), gutter: 0pt, [（#label）], body)
]

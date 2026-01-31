#let base_color = (
  _red: (189, 81, 81),
  _orange: (199, 122, 35),
  _yellow: (177, 140, 27),
  _green: (71, 143, 20),
  _cyan: (18, 125, 82),
  _blue: (5, 132, 168),
  _purple: (114, 98, 147),
)
#let callout_color = (
  info: base_color._blue,
  warning: base_color._orange,
  note: base_color._blue, // default
  question: base_color._orange,
  abstract: base_color._cyan, // summary
  summary: base_color._cyan,
  todo: base_color._blue,
  success: base_color._green,
  failure: base_color._red,
  danger: base_color._red, //error
  error: base_color._red,
  tip: base_color._cyan,
  bug: base_color._red,
  example: base_color._purple,
  folder: base_color._purple,
  quote: (158, 158, 158),
)
#let callout(type, body) = {
  block(
    width: 100%,
    fill: rgb(callout_color.at(type).at(0), callout_color.at(type).at(1), callout_color.at(type).at(2), 25),
    inset: (left: 24pt, rest: 12pt),
    radius: 8pt,
    breakable: false,
  )[
    #block(
      height: 22pt,
      inset: (top: 3pt, bottom: 3pt),
      grid(
        align: horizon,
        columns: (18pt, auto),

        image("svg/" + type + ".svg", width: 16pt),
        text(
          rgb(callout_color.at(type).at(0), callout_color.at(type).at(1), callout_color.at(type).at(2)),
          size: 16pt,
          font: ("Maple Mono NF", "LXGW WenKai Mono Screen"),
        )[#h(0.25em) *#upper(type)*],
      ),
    )

    #set text(size: 12pt, font: ("Comic Sans MS", "LXGW WenKai Mono Screen"))
    #v(0em)
    #body
    #v(0.5em)
  ]
}




#let Info(body) = callout("info", body)
#let Warning(body) = callout("warning", body)
#let Note(body) = callout("note", body)
#let Question(body) = callout("question", body)
#let Abstract(body) = callout("abstract", body)
#let Summary(body) = callout("summary", body)
#let Todo(body) = callout("todo", body)
#let Success(body) = callout("success", body)
#let Failure(body) = callout("failure", body)
#let Danger(body) = callout("danger", body)
#let Error(body) = callout("error", body)
#let Tip(body) = callout("tip", body)
#let Bug(body) = callout("bug", body)
#let Example(body) = callout("example", body)
#let Folder(body) = callout("folder", body)
#let Quote(body) = callout("quote", body)

#let question_counter = counter("question")
// question
// - number(str): question number customized by yourself
// - desc(content): question description
#let question(
  heading-counter: false,
  number: "",
  desc,
) = (
  context {
    set text(weight: "bold")
    if type(number) == int {
      str(number) + "."
    } else {
      number
    }
    desc
    v(-0.6em)
    line(length: 100%)
    v(-0.3em)
  }
)



#let answer(
  desc,
) = (
  context {
    rect(width: 100%, stroke: (left: 1pt + rgb(245, 118, 00), rest: none))[
      #desc
    ]
  }
)

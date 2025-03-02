/* Font settings */

#let font = "Palatino Linotype"

#let math-font = "Palatino Linotype"

#let set-font(lang: "en", body) = {
  show emph: set text(font: math-font)
  if lang == "en" {
    set text(font: font, lang: "en")
    body
  } else if lang == "zh-cn" {
    set text(font: font, lang: "zh")
    body
  } else {
    assert(false, message: "Font for language " + lang + " not supported")
  }
}

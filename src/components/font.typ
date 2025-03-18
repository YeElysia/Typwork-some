/* Font settings */

#let zh-font = "LXGW Wenkai"
#let en-font = "Palatino Linotype"

#let math-font = "Libertinus Math"

#let set-font(lang: "en", body) = {
  set math.text(font: "Libertinus Math")
  if lang == "en" {
    set text(
      font: en-font,
      lang: "en",
    )
    body
  } else if lang == "zh-cn" {
    set text(
      font: (en-font, zh-font),
      lang: "zh",
    )
    body
  } else {
    assert(false, message: "Font for language " + lang + " not supported")
  }
}

/* Font settings */

#let zh-font = "LXGW Wenkai Mono Screen"
#let en-font = "Maple Mono NF"
#let math-font = "Libertinus Math"

#let set-font(lang: "en", body) = {
  //set math.text(font: math-font)
  show math.equation: set text(font: (
    // "Fira Math", // 数学
    "New Computer Modern Math",
    //en-font,
    zh-font, // 中文
  ))
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

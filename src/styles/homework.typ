#import "./basic.typ": base-style
#import "../components/title.typ": make-title
#import "../components/header.typ": make-header

#let i18n-title = (
  "en": " Homework",
  "zh-cn": "作业",
)

#let style(
  course: "Course Name on Top left", // Course Name on Top left
  name: "Student Name", // Student Name
  alter: "Altered Name", // Altered Name
  id: none, // Student ID
  lang: "zh-cn",
  title: "",
  level: "post", // level: "submit" | "post"
  body,
) = {
  let header-name = ""
  let show-name = ""
  if level == "submit" {
    show-name = name
  } else if level == "post" {
    show-name = alter
    id = none
  }

  let title = if title == "" {
    i18n-title.at(lang)
  } else {
    title
  }


  show: base-style.with(lang: lang)
  set document(title: course, author: show-name)

  // header
  let header = {
    grid(
      columns: (auto, 1fr),
      align(left, course), align(right, show-name),
    )
  }
  set page(
    header-ascent: 14pt,
    header: make-header(header),
  )

  // title
  make-title(
    title: title,
    other: grid(
      align: center + bottom,
      columns: 2,
      column-gutter: 1em,
      row-gutter: 0.4em,
      show-name, id,
    ),
  )

  body
}

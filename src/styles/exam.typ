#import "../components/exam.typ": blank

#let recollection(
  course: "课程名称",
  author: "",
  institution: "浙江大学",
  academic-year: "",
  term: "秋冬学期",
  title: none,
  course-code: none,
  college: none,
  exam-form: none,
  exam-date: none,
  duration: none,
  student-fields: true,
  front-matter: none,
  font: ("Maple Mono NF", "LXGW WenKai Mono Screen"),
  size: 12pt,
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 3cm),
  watermark: "My CC98 My Home",
  body,
) = {
  set text(size, font: font)
  set par(justify: true, leading: 1em,
    first-line-indent: (amount: 2em, all: true), spacing: 1.24em)
  set document(title: if title == none { "《" + course + "》期末回忆卷" } else { title },
    author: author)
  set page(paper: "a4", margin: margin,
    header: {
      set text(10pt, baseline: 8pt, spacing: 3pt)
      grid(columns: (auto, 1fr), align(left, course), align(right, author))
      line(length: 100%, stroke: 0.7pt)
    },
    footer: context {
      set align(center)
      grid(columns: (1fr, 1fr, 1fr),
        line(length: 100%, stroke: 0.7pt),
        text(10pt, baseline: -3pt, counter(page).display(" 1 ")),
        line(length: 100%, stroke: 0.7pt),
      )
    },
    background: if watermark == none { none } else {[
      #rotate(24deg, text(50pt, fill: rgb(128, 128, 128, 40))[
        #strong(watermark) $"         "$
      ])
      #v(5cm)
      #rotate(24deg, text(50pt, fill: rgb(128, 128, 128, 40))[
        $"         "$ #strong(watermark)
      ])
      #v(5cm)
      #rotate(24deg, text(50pt, fill: rgb(128, 128, 128, 40))[
        #strong(watermark) $"         "$
      ])
    ]},
  )
  show figure.where(kind: image): set figure(supplement: [图])
  show figure.where(kind: table): set figure(supplement: [表])
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.caption: set text()
  set figure.caption(separator: "　")
  set math.equation(supplement: [公式])
  set heading(numbering: "一、")
  set enum(numbering: "1.")

  align(center)[
    #text(size: 20pt, weight: "regular")[#institution #academic-year 学年#term]
    #v(-1em)
    #text(size: 14pt, weight: "regular")[
      #if title == none { [《#course》期末回忆卷] } else { title }
    ]
  ]
  v(2em)
  if front-matter != none {
    front-matter
  } else {
    if course-code != none or college != none {
      grid(columns: (1fr, 1fr),
        align(left)[课程号： #blank(width: 12em)[#if course-code != none { course-code }]],
        align(left)[开课学院： #blank(width: 12em)[#if college != none { college }]],
      )
    }
    if exam-form != none {
      grid(columns: 1fr, align(left)[考试形式：#exam-form])
    }
    if exam-date != none or duration != none {
      assert(exam-date == none or exam-date.len() == 3,
        message: "exam-date must be a (year, month, day) array")
      grid(columns: (1fr, 1fr),
        align(left)[考试日期：#blank(width: 3em)[#if exam-date != none { exam-date.at(0) }]年
          #blank(width: 1.5em)[#if exam-date != none { exam-date.at(1) }] 月
          #blank(width: 1.5em)[#if exam-date != none { exam-date.at(2) }] 日],
        align(left)[考试时间： #blank(width: 4em)[#if duration != none { duration }] 分钟],
      )
    }
    if student-fields {
      grid(columns: (1fr, 1fr, 1fr),
        align(left)[考生姓名：#blank()],
        align(left)[学　　号： #blank()],
        align(left)[所属院系：#blank()],
      )
    }
  }
  body
}

#import "@local/Typwork-some:0.1.3": styles, exam

#show: styles.recollection.with(
  course: "示例课程", author: "作者", academic-year: "2026-2027",
  term: "秋冬学期", course-code: "EXAMPLE", college: "示例学院",
  exam-form: [闭卷], exam-date: (2026, 11, 15), duration: 120,
)

= 判断题
#exam.judgment[1][实信号的频谱具有共轭对称性。]
#exam.judgment[2][
  以下为给定信号的频谱表达式。
  $ X(f)=integral_(-infinity)^infinity x(t) upright(e)^(-j 2 pi f t) dif t. $
]

= 填空题
#exam.question[1][空白：#exam.blank()；兼容空内容块：#exam.blank[]。]
#exam.question[2][指定宽度：#exam.blank(width: 8em)；填字：#exam.blank[示例文字]。]

= 计算题
#exam.question[1][已知 $x(t)$ 的傅里叶变换为 $X(f)$，求以下信号的频谱。
  #exam.subquestion[1][$x(t-t_0)$。]
  #exam.subquestion[2][$t x(t)$。]
]

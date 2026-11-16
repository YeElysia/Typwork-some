#import "@local/Typwork-some:0.1.3": styles, homework, version
#assert(version == "0.1.3")
#show: styles.work.with(course: "兼容性验证", alter: "作者", title: "作业模板")
#homework.question(number: 1)[求 $x^2$ 的导数。]
#homework.answer()[$2x$。]

# Typwork-some
个人写作的Typst预设  
Typst presets for my work writing.  

## 项目来源 
本项目基于 [typreset](https://github.com/Fr4nk1inCs/typreset) 修改，感谢原作者的贡献。  
This project is modified from [typreset](https://github.com/Fr4nk1inCs/typreset). Thanks to the original author for their contribution.

## 使用方法

### 下载

手动下载 Scripst 并将其存放至：  
```
~/.local/share/typst/packages/local/Typwork-some/0.1.1                 # Linux  
%APPDATA%\typst\packages\local\Typwork-some\0.1.1                      # Windows  
~/Library/Application Support/typst/packages/local/Typwork-some/0.1.1  # macOS  
```

或者运行如下命令：

```bash 
mkdir -p {data-dir}/typst/packages/local/Typwork-some
git clone https://github.com/yeelysia/Typwork-some.git ~/.local/share/typst/packages/local/Typwork-some/0.1.1
```

其中`data-dir`为Typst的数据目录，如上述Linux系统中的`~/.local/share/typst`，Windows系统中的`%APPDATA%\typst`，macOS系统中的`~/Library/Application Support/typst`。

### 使用
```typst
#import "@local/Typwork-some:0.1.1": homework,styles

#let question = homework.question
#let answer = homework.answer

#let level = sys.inputs.at("level", default: "post"); //报告等级 the level of the report


/*
  你可以选择在文档内手动设置等级，或者编译时传入参数
  You can choose to set the level manually in the document or pass it as a parameter at compile time.

  例如：typst compile main.typ main-submit.pdf --input level=submit
  例如：typst compile main.typ main-post.pdf --input level=post
  
  example: typst compile main.typ main-post.pdf --input level=post
  example: typst compile main.typ main-submit.pdf --input level=submit

  level: "post" | "submit"
  post: 显示昵称并隐藏学号 show nickname and hide student ID
  submit: 显示真名和学号 show real name and student ID
*/

#show: styles.work.with(
  course: "Course Name",
  name: "Name",
  alter: "Nickname",
  id: "Student ID",
  lang: "zh-cn", // "zh-cn" | "en"
  title: "The Title of the Report",
  level: level,
)

#question(number:1)[
  This is a question.
]
#answer()[
  This is an answer.
]
#question(number:"一、")[
  This is a question.
]
#answer()[
  This is an answer.
]

```python
test_str = "Hello, World!"
print(test_str)
```

![alt text](docs/test_show.png)

下面有居中的数字页脚，截图中没有显示

There is a centered page number footer below, which is not displayed in the screenshot.
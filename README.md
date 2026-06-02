# 湖州师范大学硕士学位论文 LaTeX 模板

本目录包含从学院 Word/PDF 模板整理出的 LaTeX 版本：独立类文件 `hznu-thesis.cls`、示例主文件 `main.tex`、参考文献示例 `references.bib`、本地字体目录 `fonts/` 和封面图片目录 `pics/`。

## 编译

请使用 XeLaTeX：

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

生成结果为 `main.pdf`。模板使用 `gbt7714-numerical` 参考文献样式，TeX Live 2025 已包含该样式。

## 文件说明

- `hznu-thesis.cls`：论文版式、封面、声明页、摘要、目录、页眉页脚、图表题注、参考文献等格式。
- `main.tex`：可直接修改的论文正文示例。
- `references.bib`：BibTeX 参考文献示例，默认使用 GB/T 7714 顺序编码制。
- `fonts/`：模板使用的宋体、黑体、楷体、仿宋和 Times New Roman 字体文件。
- `pics/`：封面使用的学校名图片和校徽文件；默认使用 `pics/school-name.pdf` 和 `pics/logo.pdf`。

## 常用字段

在 `main.tex` 开头修改论文信息：

```latex
\title{中文题目}
\entitle{English Title}
\author{作者姓名}
\studentid{学号}
\supervisor{导师姓名 职称}
\degreetype{专业学位}
\major{计算机技术}
\researchfield{研究方向}
\college{信息工程学院}
\submitdate{2026 年 4 月}
```

如要替换封面学校名或校徽，在 `main.tex` 导言区写：

```latex
\schoolnamepic{pics/你的学校名图片.pdf}
\logopic{pics/你的校徽.pdf}
```

## 微调字体

推荐先在 `main.tex` 中重定义局部样式，不必直接改类文件。例如把正文改成五号、1.3 倍行距：

```latex
\renewcommand{\hznubodyfont}{\songti\zihao{5}\setstretch{1.3}}
```

常用可调命令如下：

- `\hznubodyfont`：正文默认字体。
- `\hznuchapterfont`：一级标题字体。
- `\hznusectionfont`：二级标题字体。
- `\hznusubsectionfont`：三级标题字体。
- `\hznucaptionfont`：图题、表题字体。
- `\hznucovertitlefont`：封面中文题名字体。
- `\hznucoverentitlefont`：封面英文题名字体。
- `\hznucoverinfofont`：封面作者、学号、导师等信息区域的基础字体。
- `\hznucnabstractfont`、`\hznuenabstractfont`：中英文摘要正文字体。

示例：只把图题、表题改为小五号：

```latex
\renewcommand{\hznucaptionfont}{\songti\zihao{-5}}
```

模板已去除原 Word/PDF 中的紫色说明批注；这些说明已转化为类文件默认格式和示例用法。

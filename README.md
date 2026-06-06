# 湖州师范大学硕士学位论文 LaTeX 初稿模板

本项目参照“湖州师范大学硕士学位论文撰写模版（信工2026年4月版）”完成。学校的 Word 模板后期很有可能继续调整，因此本项目不保证永远与学校最新要求完全一致。

必须注意：最后提交大论文必须提交 Word 版本。本项目只是为了使用 LaTeX、Git、AI等“现代工具”快速撰写、排版和管理论文初稿，后期必须转移到 Word 模板中，并以学校最终发布的 Word 模板为准进行检查和提交。

## 文件结构

- `hznu-thesis.cls`：论文模板类文件，包含封面、声明页、摘要、目录、页眉页脚、章节标题、图表、参考文献等格式设置。
- `main.tex`：论文主文件和示例内容，实际写作时主要修改这里。
- `references.bib`：BibTeX 参考文献示例。
- `fonts/`：模板当前使用的本地字体文件。
- `pics/`：封面使用的学校名和校徽图片。

`build/`、`main.pdf`、`.aux`、`.log`、`.toc` 等文件都是编译或检查时生成的临时文件，不需要提交到 GitHub。

## 编译方式

请使用 XeLaTeX 编译：

```bash
latexmk -xelatex -interaction=nonstopmode main.tex
```

也可以手动编译：

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

生成结果为 `main.pdf`。

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
\schoolnamepic{pics/school-name.pdf}
\logopic{pics/logo.pdf}
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

建议用本项目完成论文初稿、公式、图表、引用和版本管理。定稿前请把内容迁移到学校要求的 Word 模板中，并逐项核对封面、目录、摘要、页眉页脚、图表题注、参考文献和附录等格式。
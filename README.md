# 湖州师范大学硕士学位论文 LaTeX 初稿模板

本项目参照“湖州师范大学硕士学位论文撰写模版（信工2026年4月版）”完成。学校的 Word 模板后期很有可能继续调整，因此本项目不保证永远与学校最新要求完全一致。

必须注意：最后提交大论文必须提交 Word 版本。本项目只是为了使用 LaTeX、Git、AI 等“现代工具”快速撰写、排版和管理论文初稿，后期必须转移到 Word 模板中，并以学校最终发布的 Word 模板为准进行检查和提交。

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

## 论文信息

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

如需替换封面学校名或校徽，在 `main.tex` 导言区修改：

```latex
\schoolnamepic{pics/school-name.pdf}
\logopic{pics/logo.pdf}
```

## 写作建议

建议用本项目完成论文初稿、公式、图表、引用和版本管理。定稿前请把内容迁移到学校要求的 Word 模板中，并逐项核对封面、目录、摘要、页眉页脚、图表题注、参考文献和附录等格式。

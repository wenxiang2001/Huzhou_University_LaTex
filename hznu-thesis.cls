\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hznu-thesis}[2026/05/31 Huzhou University master thesis template]

\LoadClass[UTF8,zihao=-4,twoside,openany,fontset=none]{ctexbook}

\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{hznu-thesis}{This class must be compiled with XeLaTeX}{Use: xelatex main.tex}
\fi

\RequirePackage{geometry}
\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{etoolbox}
\RequirePackage[numbers,sort&compress,super]{natbib}
\RequirePackage[hidelinks]{hyperref}
\setcitestyle{super,open={[},close={]}}
\pdfstringdefDisableCommands{%
  \def\quad{ }%
  \def\qquad{ }%
}

\geometry{
  a4paper,
  top=2.54cm,
  bottom=2.54cm,
  left=3.17cm,
  right=3.17cm,
  headheight=15pt,
  headsep=0.62cm,
  footskip=0.79cm
}

\defaultfontfeatures{Ligatures=TeX}
\setmainfont[
  Path=fonts/,
  UprightFont=times.ttf,
  BoldFont=timesbd.ttf,
  ItalicFont=timesi.ttf,
  BoldItalicFont=timesbi.ttf
]{Times New Roman}
\newfontfamily\hznutimes[
  Path=fonts/,
  UprightFont=times.ttf,
  BoldFont=timesbd.ttf,
  ItalicFont=timesi.ttf,
  BoldItalicFont=timesbi.ttf
]{Times New Roman}

% Songti bold is rendered by emboldening SimSun itself. Use \heiti explicitly
% where the template requires HeiTi instead of relying on \songti+\bfseries.
\newcommand{\hznusongboldfactor}{5.0}
\newfontfamily\hznusonglatin[
  Path=fonts/,
  FontIndex=0,
  AutoFakeBold=\hznusongboldfactor
]{simsun.ttc}

\setCJKmainfont[
  Path=fonts/,
  UprightFont=simsun.ttc,
  UprightFeatures={FontIndex=0},
  AutoFakeBold=\hznusongboldfactor,
  ItalicFont=simkai.ttf
]{SimSun}
\setCJKfamilyfont{hznusong}[Path=fonts/,FontIndex=0,AutoFakeBold=\hznusongboldfactor,ItalicFont=simkai.ttf]{simsun.ttc}
\setCJKfamilyfont{hznuhei}[Path=fonts/,AutoFakeBold=2.5]{simhei.ttf}
\setCJKfamilyfont{hznukai}[Path=fonts/,AutoFakeBold=4.0]{simkai.ttf}
\setCJKfamilyfont{hznufang}[Path=fonts/,AutoFakeBold=2.5]{simfang.ttf}
\setCJKmonofont[Path=fonts/,FontIndex=0]{simsun.ttc}
\providecommand{\songti}{}
\providecommand{\heiti}{}
\providecommand{\kaishu}{}
\providecommand{\fangsong}{}
\renewcommand{\songti}{\CJKfamily{hznusong}}
\renewcommand{\heiti}{\CJKfamily{hznuhei}}
\renewcommand{\kaishu}{\CJKfamily{hznukai}}
\renewcommand{\fangsong}{\CJKfamily{hznufang}}
\newcommand{\songticu}{\songti\bfseries}

\newcommand{\hznu@classification}{TP39}
\newcommand{\hznu@udc}{}
\newcommand{\hznu@schoolcode}{10347}
\newcommand{\hznu@secretlevel}{公开}
\newcommand{\hznu@title}{论文题目}
\newcommand{\hznu@entitle}{Thesis Title}
\newcommand{\hznu@author}{}
\newcommand{\hznu@studentid}{}
\newcommand{\hznu@supervisor}{}
\newcommand{\hznu@degreetype}{}
\newcommand{\hznu@major}{}
\newcommand{\hznu@researchfield}{}
\newcommand{\hznu@college}{信息工程学院}
\newcommand{\hznu@submitdate}{20\quad 年\quad 月\quad 日}
\newcommand{\hznu@schoolnamepic}{pics/school-name.pdf}
\newcommand{\hznu@logopic}{pics/logo.pdf}

\newcommand{\hznulinefactor}{1.65}
\newcommand{\hznubodyfont}{\songti\zihao{-4}\setstretch{\hznulinefactor}}
\newcommand{\hznuchapterfont}{\heiti\bfseries\zihao{-3}}
\newcommand{\hznusectionfont}{\hznutimes\bfseries\songticu\zihao{4}}
\newcommand{\hznusubsectionfont}{\hznutimes\bfseries\songticu\zihao{-4}}
\newcommand{\hznucaptionfont}{\songti\zihao{5}}
\newcommand{\hznutocchapterfont}{\hznutimes\bfseries\songticu\zihao{-4}}
\newcommand{\hznucovermetafont}{\hznusonglatin\songticu\zihao{-4}}
\newcommand{\hznucoverthesisfont}{\kaishu\bfseries\fontsize{32bp}{38bp}\selectfont}
\newcommand{\hznucovertitlefont}{\heiti\bfseries\fontsize{18bp}{24bp}\selectfont}
\newcommand{\hznucoverentitlefont}{\hznutimes\bfseries\fontsize{16bp}{20bp}\selectfont}
\newcommand{\hznucoverinfofont}{\kaishu\zihao{3}}
\newcommand{\hznucoverlabelfont}{\kaishu\bfseries\zihao{3}}
\newcommand{\hznucnabstractfont}{\songti\zihao{-4}\setstretch{\hznulinefactor}}
\newcommand{\hznuenabstractfont}{\hznutimes\zihao{-4}\setstretch{\hznulinefactor}}
\newcommand{\hznutablefont}{\songti\zihao{5}\setstretch{1}}
\newcommand{\hznutableheadfont}{\songticu\zihao{5}\setstretch{1}}
\newcommand{\hznutablehead}[1]{{\hznutableheadfont #1}}

\renewcommand{\title}[1]{\gdef\hznu@title{#1}\hypersetup{pdftitle={#1}}}
\renewcommand{\author}[1]{\gdef\hznu@author{#1}\hypersetup{pdfauthor={#1}}}
\newcommand{\entitle}[1]{\gdef\hznu@entitle{#1}}
\newcommand{\classification}[1]{\gdef\hznu@classification{#1}}
\newcommand{\udc}[1]{\gdef\hznu@udc{#1}}
\newcommand{\schoolcode}[1]{\gdef\hznu@schoolcode{#1}}
\newcommand{\secretlevel}[1]{\gdef\hznu@secretlevel{#1}}
\newcommand{\studentid}[1]{\gdef\hznu@studentid{#1}}
\newcommand{\supervisor}[1]{\gdef\hznu@supervisor{#1}}
\newcommand{\degreetype}[1]{\gdef\hznu@degreetype{#1}}
\newcommand{\major}[1]{\gdef\hznu@major{#1}}
\newcommand{\researchfield}[1]{\gdef\hznu@researchfield{#1}}
\newcommand{\college}[1]{\gdef\hznu@college{#1}}
\newcommand{\submitdate}[1]{\gdef\hznu@submitdate{#1}}
\newcommand{\schoolnamepic}[1]{\gdef\hznu@schoolnamepic{#1}}
\newcommand{\logopic}[1]{\gdef\hznu@logopic{#1}}

\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\raggedbottom

\ctexset{
  chapter={
    name={,},
    number=\arabic{chapter},
    format=\centering\hznuchapterfont,
    aftername=\hspace{1em},
    beforeskip=1.0\baselineskip,
    afterskip=1.0\baselineskip,
    fixskip=true
  },
  section={
    format=\raggedright\hznusectionfont,
    aftername=\hspace{1em},
    beforeskip=0.5\baselineskip,
    afterskip=0.1\baselineskip
  },
  subsection={
    format=\raggedright\hznusubsectionfont,
    aftername=\hspace{1em},
    beforeskip=0.35\baselineskip,
    afterskip=0.1\baselineskip
  }
}

\renewcommand{\contentsname}{目\quad 录}
\renewcommand{\listfigurename}{插图清单}
\renewcommand{\listtablename}{附表清单}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\renewcommand{\cftchapfont}{\hznutocchapterfont}
\renewcommand{\cftchappagefont}{\hznutimes\bfseries\zihao{-4}}
\renewcommand{\cftsecfont}{\songti\zihao{-4}}
\renewcommand{\cftsecpagefont}{\hznutimes\zihao{-4}}
\renewcommand{\cftsubsecfont}{\songti\zihao{-4}}
\renewcommand{\cftsubsecpagefont}{\hznutimes\zihao{-4}}
\renewcommand{\cftdotsep}{0.6}
\newcommand{\hznulightdotfill}{%
  \leaders\hbox{\hskip 0.005em{\textcolor{black!82}{\normalfont\scalebox{1.18}{.}}}\hskip 0.06em}\hfill
}
\newcommand{\hznutocdarkdotfill}{%
  \leaders\hbox{\hskip 0.005em{\textcolor{black!90}{\normalfont\bfseries\scalebox{1.13}{.}}}\hskip 0.06em}\hfill
}
\newcommand{\hznu@tocpagenum}[2]{%
  \begingroup
  \setlength{\fboxsep}{0pt}%
  \makebox[0pt][r]{\colorbox{white}{\hspace{0.05em}#1 #2}}%
  \endgroup
}
\renewcommand{\cftchapleader}{\hznutocdarkdotfill}
\renewcommand{\cftsecleader}{\hznulightdotfill}
\renewcommand{\cftsubsecleader}{\hznulightdotfill}
\renewcommand{\cftchapfillnum}[1]{%
  {\cftchapleader}\nobreak
  \hznu@tocpagenum{\cftchappagefont}{#1}\cftchapafterpnum\par
}
\renewcommand{\cftsecfillnum}[1]{%
  {\cftsecleader}\nobreak
  \hznu@tocpagenum{\cftsecpagefont}{#1}\cftsecafterpnum\par
}
\renewcommand{\cftsubsecfillnum}[1]{%
  {\cftsubsecleader}\nobreak
  \hznu@tocpagenum{\cftsubsecpagefont}{#1}\cftsubsecafterpnum\par
}
\renewcommand{\cftfigfillnum}[1]{%
  {\cftfigleader}\nobreak
  \hznu@tocpagenum{\cftfigpagefont}{#1}\cftfigafterpnum\par
}
\renewcommand{\cfttabfillnum}[1]{%
  {\cfttableader}\nobreak
  \hznu@tocpagenum{\cfttabpagefont}{#1}\cfttabafterpnum\par
}
\renewcommand{\cfttoctitlefont}{\hfill\heiti\bfseries\zihao{-3}}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftloftitlefont}{\hfill\heiti\bfseries\zihao{-3}}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftlottitlefont}{\hfill\heiti\bfseries\zihao{-3}}
\renewcommand{\cftafterlottitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{1.0\baselineskip}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftafterloftitleskip}{1.0\baselineskip}
\setlength{\cftbeforelottitleskip}{0pt}
\setlength{\cftafterlottitleskip}{1.0\baselineskip}
\setlength{\cftbeforechapskip}{0pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\renewcommand{\cftfigpresnum}{图\ }
\renewcommand{\cfttabpresnum}{表\ }
\renewcommand{\cftfigleader}{\hznulightdotfill}
\renewcommand{\cfttableader}{\hznulightdotfill}
\setlength{\cftfignumwidth}{3.5em}
\setlength{\cfttabnumwidth}{3.5em}

\DeclareCaptionFont{hznucaption}{\hznucaptionfont}
\captionsetup{
  font=hznucaption,
  labelfont=hznucaption,
  labelsep=quad,
  justification=centering,
  singlelinecheck=false
}
\captionsetup[figure]{position=bottom,skip=6pt}
\captionsetup[table]{position=top,skip=6pt}
\setlength{\heavyrulewidth}{1.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\cmidrulewidth}{0.5pt}
\setlength{\extrarowheight}{0pt}
\AtBeginEnvironment{table}{%
  \hznutablefont
  \renewcommand{\arraystretch}{2.0}%
}
\newsavebox{\hznu@threelinebox}
\newenvironment{hznuthreelinetable}[1]{%
  \begin{lrbox}{\hznu@threelinebox}%
  \begin{tabular*}{1.00\textwidth}{@{\hspace{0.8em}\extracolsep{\fill}}#1@{\hspace{0.8em}}}
}{%
  \end{tabular*}%
  \end{lrbox}%
  \noindent\makebox[\textwidth][c]{\usebox{\hznu@threelinebox}}%
}
\newenvironment{hznulongthreelinetable}[4]{%
  \begingroup
  \hznutablefont
  \renewcommand{\arraystretch}{2.0}%
  \setlength{\LTleft}{0pt plus 1fill}%
  \setlength{\LTright}{0pt plus 1fill}%
  \setlength{\LTpre}{0pt}%
  \setlength{\LTpost}{0pt}%
  \begin{longtable}{@{\hspace{0.8em}}#3@{\hspace{0.8em}}}
  \caption{#1}\label{#2}\\
  \toprule
  #4\\[-0.25ex]
  \midrule
  \endfirsthead
  \caption[]{（续）}\\
  \toprule
  #4\\[-0.25ex]
  \midrule
  \endhead
  \bottomrule
  \endfoot
  \bottomrule
  \endlastfoot
}{%
  \end{longtable}%
  \endgroup
}
\numberwithin{equation}{chapter}

\setlist{nosep}
\setlist[enumerate,1]{label=\arabic*.,leftmargin=2em,itemindent=0pt}
\setlist[itemize,1]{leftmargin=2em}

\fancypagestyle{hznu@front}{
  \fancyhf{}
  \fancyfoot[C]{\hznutimes\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{hznu@main}{
  \fancyhf{}
  \fancyhead[CO]{\songti\zihao{5}湖州师范大学硕士学位论文}
  \fancyhead[CE]{\songti\zihao{5}\hznu@title}
  \fancyfoot[C]{\hznutimes\zihao{5}\textemdash\ \thepage\ \textemdash}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\headrule}{%
    {\color{black}\hrule width\headwidth height\headrulewidth}%
    \vskip-\headrulewidth
  }
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{hznu@empty}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\makeatletter
\newcommand{\hznu@blankpage}{%
  \clearpage
  \thispagestyle{empty}%
  \null
  \clearpage
}

\renewcommand{\frontmatter}{%
  \clearpage
  \@mainmatterfalse
  \pagenumbering{Roman}%
  \pagestyle{hznu@front}%
  \let\ps@plain\ps@hznu@front
}
\renewcommand{\mainmatter}{%
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}%
  \pagestyle{hznu@main}%
  \let\ps@plain\ps@hznu@main
}
\renewcommand{\backmatter}{%
  \clearpage
  \@mainmatterfalse
  \pagestyle{hznu@main}%
  \let\ps@plain\ps@hznu@main
}

\newcommand{\hznu@coverline}[2]{%
  \makebox[3.0cm][l]{{\hznucoverlabelfont #1}} &
  \makebox[8.5cm][c]{{\hznucoverinfofont #2}}\\[-0.55ex]\cline{2-2}\\[-0.1ex]
}

\newcommand{\makecover}{%
  \clearpage
  \begin{titlepage}
    \thispagestyle{empty}
    \songti\setstretch{1}
    \noindent
    \begin{minipage}[t]{0.47\textwidth}
      \hznucovermetafont
      中图分类号：\underline{\makebox[2.2cm][c]{\hznu@classification}}\par
      \vspace{0.7em}
      UDC 分类号：\underline{\makebox[2.2cm][c]{\hznu@udc}}
    \end{minipage}\hfill
    \begin{minipage}[t]{0.39\textwidth}
      \hznucovermetafont
      学校代码：\underline{\makebox[2.2cm][c]{\hznu@schoolcode}}\par
      \vspace{0.7em}
      密\qquad 级：\underline{\makebox[2.2cm][c]{\hznu@secretlevel}}
    \end{minipage}

    \vspace{1.2cm}
    \begin{center}
      \includegraphics[width=7.4cm]{\hznu@schoolnamepic}\par
      \vspace{0.55cm}
      {\hznucoverthesisfont 硕\;\;\;士\;\;\;学\;\;\;位\;\;\;论\;\;\;文}\par
      \vspace{0.75cm}
      \includegraphics[width=2.25cm]{\hznu@logopic}\par
      \vspace{1.7cm}
      \begin{minipage}{\textwidth}
        \setlength{\emergencystretch}{2em}
        \centering
        {\hznucovertitlefont \hznu@title\par}
        \vspace{0.2em}\hrule height 0.75pt
        \vspace{0.28em}
        {\hznucoverentitlefont \hznu@entitle\par}
        \vspace{0.18em}\hrule height 0.75pt
      \end{minipage}
    \end{center}

    \vfill
    \begin{center}
      {\hznucoverinfofont
      \begin{tabular}{@{}p{3.0cm}@{}p{8.5cm}@{}}
        \hznu@coverline{论文作者：}{\hznu@author}
        \hznu@coverline{学\qquad 号：}{\hznutimes\hznu@studentid}
        \hznu@coverline{指导教师：}{\hznu@supervisor}
        \hznu@coverline{学位类型：}{\hznu@degreetype}
        \hznu@coverline{学科专业：}{\hznu@major}
        \hznu@coverline{研究方向：}{\hznu@researchfield}
        \hznu@coverline{培养单位：}{\hznu@college}
        \hznu@coverline{提交日期：}{\hznu@submitdate}
      \end{tabular}}
    \end{center}
  \end{titlepage}
  \hznu@blankpage
}

\newcommand{\makedeclaration}{%
  \clearpage
  \thispagestyle{empty}
  \hznubodyfont
  \begin{center}
    {\bfseries\zihao{3}湖州师范大学学位论文原创性声明}
  \end{center}
  \vspace{1em}

  本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得\underline{\textbf{湖州师范大学}}或其他教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。

  \vspace{4em}
  \noindent\makebox[0.48\textwidth][l]{\textbf{论文作者签名：}}
  \makebox[0.48\textwidth][l]{\textbf{签字日期：}\quad 年\quad 月\quad 日}

  \vspace{8em}
  \begin{center}
    {\bfseries\zihao{3}湖州师范大学学位论文版权使用授权书}
  \end{center}

  本学位论文作者完全了解\underline{\textbf{湖州师范大学}}有权保留并向国家有关部门或机构送交本论文的复印件和磁盘，允许论文被查阅和借阅。本人授权\underline{\textbf{湖州师范大学}}
  可以将学位论文的全部或部分内容编入有关数据库进行检索和传播，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。

  本学位论文属于（请在以下相应方框内打“√”）

  \noindent\hspace*{2em}$\square$ 保密，在\underline{\makebox[3em]{}}年解密后适用本授权书。

  \noindent\hspace*{2em}$\square$ 不保密。

  \vspace{4em}
  \noindent\makebox[0.48\textwidth][l]{\textbf{论文作者签名：}}
  \makebox[0.48\textwidth][l]{\textbf{指导教师签名：}}

  \noindent\makebox[0.48\textwidth][l]{\textbf{签字日期：}\quad 年\quad 月\quad 日}
  \makebox[0.48\textwidth][l]{\textbf{签字日期：}\quad 年\quad 月\quad 日}
  \hznu@blankpage
}

\newcommand{\hznu@frontchapter}[1]{%
  \chapter*{#1}%
  \addcontentsline{toc}{chapter}{#1}%
  \markboth{#1}{#1}%
}

\newenvironment{cnabstract}{%
  \hznu@frontchapter{摘\quad 要}%
  \hznucnabstractfont
}{\clearpage}

\newenvironment{enabstract}{%
  \hznu@frontchapter{Abstract}%
  \hznuenabstractfont
}{\clearpage}

\newcommand{\cnkeywords}[1]{%
  \par\vspace{1em}\noindent{\heiti 关键词：}{\songti #1}\par
}
\newcommand{\enkeywords}[1]{%
  \par\vspace{1em}{\hznutimes\noindent\hspace*{2em}%
  {\bfseries Key Words: }#1\par}%
}

\newenvironment{abbreviations}{%
  \hznu@frontchapter{缩略词表}%
  \songti\zihao{-4}\setstretch{1}%
  \renewcommand{\arraystretch}{2.0}%
  \begin{hznuthreelinetable}{%
    >{\centering\arraybackslash\hznutimes}p{0.16\textwidth}%
    >{\centering\arraybackslash\hznutimes}p{0.46\textwidth}%
    >{\centering\arraybackslash\songti}p{0.24\textwidth}%
  }
  \toprule\\[-7.8ex]
  \hznutablehead{缩略词} & \hznutablehead{英文全称} & \hznutablehead{中文全称}\\[-0.9ex]
  \midrule\\[-7ex]
}{%
  \bottomrule
  \end{hznuthreelinetable}
  \clearpage
}

\newcommand{\makefigureslist}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{插图清单}
  \listoffigures
  \clearpage
}
\newcommand{\maketableslist}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{附表清单}
  \listoftables
  \clearpage
}

\newcommand{\beginappendices}{%
  \appendix
  \ctexset{
    chapter={
      name={附录,},
      number=\Alph{chapter},
      aftername=\quad
    }
  }
}

\newcommand{\resumechapter}{%
  \chapter*{作者简历及在学期间取得的创新性成果}%
  \addcontentsline{toc}{chapter}{作者简历及在学期间取得的创新性成果}%
  \markboth{作者简历及在学期间取得的创新性成果}{作者简历及在学期间取得的创新性成果}%
}

\newcommand{\acknowledgements}{%
  \chapter*{致\quad 谢}%
  \addcontentsline{toc}{chapter}{致\quad 谢}%
  \markboth{致\quad 谢}{致\quad 谢}%
}

\renewcommand{\bibfont}{\songti\zihao{-4}\setstretch{1.5}}
\setlength{\bibsep}{0pt}
\renewcommand{\bibsection}{%
  \chapter*{\bibname}%
  \addcontentsline{toc}{chapter}{\bibname}%
  \markboth{\bibname}{\bibname}%
}
\bibliographystyle{gbt7714-numerical}

\AtBeginDocument{%
  \hznubodyfont
  \hypersetup{
    pdfcreator={XeLaTeX with hznu-thesis class},
    pdfsubject={湖州师范大学硕士学位论文}
  }%
}
\makeatother

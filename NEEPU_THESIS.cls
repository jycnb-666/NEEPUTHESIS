%Copyright © 2022-2023 jycnb-666 and J.K Hao
%LaTeX identification
%LaTeX2e 3.1415926
%File_name:NEEPU_THESIS

\ProvidesClass{NEEPU_THESIS}

%Customized options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
\LoadClass[UTF8]{ctexart}

%Format of the title
\RequirePackage[labelfont=bf,justification=centering]{caption}
% \RequirePackage{titlesec}
\ctexset{section={name={第,章},format={\centering\zihao{-2}\heiti},beforeskip=0.5em,afterskip=1em}}
\ctexset{subsection={format={\zihao{3}\heiti},beforeskip=0.5em,afterskip=1em}}
\ctexset{subsubsection={titleformat={\zihao{4}\songti\bfseries},nameformat={\zihao{4}\songti\mdseries},beforeskip=0.5em,afterskip=0.5em}}


% Settings of pages
\RequirePackage{geometry}
\RequirePackage{svg}
\geometry{a4paper,left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm}

% Pages' foot and head
\RequirePackage{fancyhdr}

% Content's format
\RequirePackage[titles,subfigure]{tocloft}    

% Fonts
\RequirePackage{xeCJK}
\RequirePackage{CJKpunct}   % 标点符号
\RequirePackage{fontspec}   % 修改字体
\RequirePackage{bm}         % 字母加粗

% Tabulas
\RequirePackage{enumerate}  % 列表宏包
\RequirePackage{enumitem}   % 调整列表格式

% distances between lines
\RequirePackage{setspace}
\setlength{\parskip}{0pt}       % 段与段间距

% Fomula's enviroments
\RequirePackage{mathtools}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathptmx}
\RequirePackage{mathrsfs}   % 花体
\renewcommand{\theequation}{\arabic{section}-\arabic{equation}}  % 设置公式编号样式
\makeatletter
\@addtoreset{equation}{section}     % 避免换章节公式不置零
\makeatother

% tabulas' environment
\RequirePackage{graphicx}
\graphicspath{{figure/}}        % 图片路径
\RequirePackage{subfigure}          % 并列排列多张图
\RequirePackage{float}              % 浮动体
\RequirePackage{booktabs}           % 三线表
\RequirePackage{bigstrut,multirow,rotating}     % 特殊表格
\RequirePackage{makecell}           % 表格内换行
\captionsetup{labelsep=quad}    % 图表标题格式
\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}      % 设置图像编号样式
\renewcommand{\thetable}{\arabic{section}-\arabic{table}}        % 设置表格编号样式

% Conferences
\RequirePackage[numbers,sort&compress]{natbib} 
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}  % 上标引用


% 调整行间公式与文本之间的间距
\makeatletter
\renewcommand\normalsize{%
\@setfontsize\normalsize\@xpt\@xiipt
\abovedisplayskip 4\p@ \@plus2\p@ \@minus5\p@
\abovedisplayshortskip \z@ \@plus3\p@
\belowdisplayshortskip 4\p@ \@plus3\p@ \@minus3\p@
\belowdisplayskip \abovedisplayskip
\let\@listi\@listI}
\RequirePackage{bibspacing}
\setlength{\bibspacing}{0\baselineskip}
\makeatother

% 增加表格某一行高
\newcommand\xrowht[2][0]{\addstackgap[.5\dimexpr#2\relax]{\vphantom{#1}}}  

% 设置全文字体
\setCJKmainfont[ItalicFont={楷体}, BoldFont={黑体}]{宋体}
\setmainfont{Times New Roman} 

% 产生一定长度的下划线
\makeatletter
\newcommand\dlmu[2][4cm]{\hskip-12pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip0pt}
\makeatother


% 设置目录格式并插入目录
\renewcommand\cfttoctitlefont{\heiti\zihao{-2}}
\renewcommand{\contentsname}{\hspace*{\fill}目\quad 录\hspace*{\fill}}
\setlength{\cftbeforetoctitleskip}{-2em}
\setlength{\cftaftertoctitleskip}{20pt}
\setlength\cftbeforesecskip{-0.2em}
\setlength\cftbeforesubsecskip{-0.2em}
\setlength{\cftsubsecindent}{0pt}
\setlength{\cftsubsubsecindent}{2em}
\setlength\cftbeforesubsubsecskip{-0.2em}
\setlength{\cftsecnumwidth}{2em}
\setlength{\cftsubsecnumwidth}{1em}
\renewcommand{\cftdotsep}{1}
\setcounter{tocdepth}{3}
\renewcommand\cftsecfont{\heiti\zihao{-4}}
\renewcommand\cftsubsecfont{\heiti\zihao{-4}}
\renewcommand\cftsubsubsecfont{\songti\zihao{-4}}
\renewcommand\cftsecpagefont{\heiti\zihao{-4}}
\renewcommand\cftsubsecpagefont{\heiti\zihao{-4}}
\renewcommand\cftsubsubsecpagefont{\songti\zihao{-4}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\setlength\cftparskip{0.5em}


%封面
\newcommand{\makecover}[8]{
        \fancypagestyle{plain}{
            \pagestyle{fancy}
            \fancyhf{}
        }

        \mbox{\quad}
    \par
    \mbox{\quad}
    \par
    \begin{figure}[htbp]
    \setlength{\abovecaptionskip}{0.05cm} 
    \setlength{\belowcaptionskip}{1cm}
    \centering
    \includesvg[width=6.81cm,height=1.39cm]{neepu}
    \end{figure}
    \vspace{0.2cm}

    \begin{spacing}{1.5}

    \centerline{\fontsize{38.5pt}{1.5em}{\heiti{毕\hspace{1em}业\hspace{1em}设\hspace{1em}计\hspace{1em}论\hspace{1em}文}\vspace{2cm}}}

    \heiti{\zihao{1}\centerline{#1}}\par 
    \heiti{\zihao{1}\centerline{#2}}

    \vspace{3cm}
    \begin{table}[htbp]
    \centering
    \zihao{4}
    \renewcommand\arraystretch{2}
    \heiti{
        \begin{tabular}{cc}
        学\hspace{0.5em}生\hspace{0.5em}姓\hspace{0.5em}名： & 
        \quad\quad {#3}\quad \\
        班\quad\hspace{1.5em}\quad 级： & \quad\quad {#4} \quad \\
        学\quad\hspace{1.5em}\quad 号： & \quad\quad {#5} \quad \\
        指\hspace{0.5em}导\hspace{0.5em}教\hspace{0.5em}师： &   
        \quad\quad {#6} \quad\\
        所\hspace{0.5em}在\hspace{0.5em}单\hspace{0.5em}位： &   
        \quad\quad {#7} \quad\\
        答\hspace{0.5em}辩\hspace{0.5em}日\hspace{0.5em}期： &   
        \quad\quad {#8} \quad\\
        \end{tabular}%
        }
    \vspace{2em}
    \end{table}%

    \end{spacing}
    \thispagestyle{empty} 
}
\newcommand{\neepupagestylea}{
    \thispagestyle{fancy}
    \fancyhf{}
    \fancyhead[OC]{\zihao{-5}{东北电力大学本科毕业设计论文}}
    \fancyfoot[C]{\thepage}
}

\newcommand{\neepupagestylechap}{
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[OC]{\zihao{-5}{东北电力大学本科毕业设计论文}}
    \fancyfoot[C]{\thepage}
    \pagenumbering{arabic}
    \setcounter{page}{1}
    %\renewcommand{\subsubsection}[1]{\subsubsection{\textbf{#1}}}  
}
\newenvironment{Abstractcn}{
    \section*{摘\quad 要}
    \addcontentsline{toc}{section}{摘\quad 要}
    \vspace{0.5cm}
    \begin{spacing}{1.5}
    \large
    %\noindent \textbf{关键词：}PWM逆变器；直流电容；调制波重构SPWM；六脉动直流电压
}{\vspace{1em}\par\end{spacing}}

\newenvironment{Keywordscn}{
    \begin{spacing}{1.5}
    \large
    \noindent \textbf{关键词：}
}{\end{spacing}}

\newenvironment{Abstracten}{
    \section*{ABSTRACT}
    \addcontentsline{toc}{section}{ABSTRACT}
    \vspace{0.3cm}
    \begin{spacing}{1.5}
    \large
}{\par\vspace{1em}\end{spacing}}

\newenvironment{Keywordsen}{
    \begin{spacing}{1.5}
    \large
    \noindent\textbf{Keywords:} 
}{\end{spacing}}

\newenvironment{NEEPUtritable}[2]{
    \begin{table}[htbp]
    \centering
    \caption{#2}
    \vspace{-5pt}
    \begin{spacing}{1.2}
    \begin{tabular}{#1}
}{  \end{tabular}
    \end{spacing}
    \label{tab:addlabel}
    \end{table}
    }

\newcommand{\neepuprolegomenon}{\section{绪\quad 论}
}
\newcommand{\bodystyle}{
    \renewcommand{\baselinestretch}{1.5}
    \zihao{-4}
    }

\newcommand{\neeputanks}{
    \section*{致\quad 谢}
    \addcontentsline{toc}{section}{致\quad 谢}
}

\newcommand{\neepuappendix}{
    \section*{附\quad 录}
\addcontentsline{toc}{section}{附\quad 录}
}

\newcommand{\neepuconclusion}{
    \addcontentsline{toc}{section}{结\quad 论}
    \section*{结\quad 论}
}
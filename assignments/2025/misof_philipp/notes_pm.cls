\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{masterthesis}[2024/02/02 Notes class by Philipp Misof]

\LoadClass[a4paper, 11pt, oneside]{memoir}
\usepackage{fontspec}
\setmainfont[]{Times New Roman}
% \renewcommand{\familydefault}{\sfdefault}
% \RequirePackage[utf8]{inputenc}
% \RequirePackage[default]{lato}
% \RequirePackage[cmintegrals,cmbraces]{newtxmath}
% \RequirePackage{ebgaramond-maths}
% \RequirePackage[default,regular,black]{sourceserifpro}
% \RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}

\RequirePackage{listings}
\RequirePackage[useregional]{datetime2}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{xfrac}
\RequirePackage{cancel}
\RequirePackage{bm}
\let\boldsymbol\bm
\RequirePackage{tensor}

\RequirePackage{siunitx}
\sisetup{per-mode=fraction}

\RequirePackage[inkscapelatex=false]{svg}

\RequirePackage{metastr}
\PassOptionsToPackage{loadlang=en}{metastr}
\PassOptionsToPackage{course=true}{metastr}

\RequirePackage{graphicx}
\RequirePackage[
    left=2.5cm,
    right=2.5cm,
    top=2.5cm,
    bottom=3cm]{geometry}

\RequirePackage[shortlabels]{enumitem}
\setlist[enumerate]{nosep, topsep=0pt}
\setlist[itemize]{nosep, topsep=0pt}

\RequirePackage[nameinlink]{cleveref}
\RequirePackage{csquotes}

\RequirePackage{environ}
\RequirePackage{tcolorbox}

\RequirePackage{tikz}
\usetikzlibrary{shapes, arrows, positioning}


\RequirePackage[backend=biber,
                style=nature]{biblatex}


\pagestyle{fancy}
\fancyhf{}

% \fancyfoot[C]{} \\ \small \thepage}

% \renewcommand\thesubsubsection{\alph{subsubsection}}
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray}\noncopynumber,
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=t,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
    columns=fullflexible,
    % literate={\ }{{\copyablespace}}1
}
\lstset{style=mystyle}


\newcommand{\code}[1]{\lstinline{#1}}
\newcommand{\comp}{^\mathsf{c}}
\newcommand{\expec}[1]{\mathbb{E}\left[#1\right]}
\newcommand{\var}[1]{V(#1)}
\newcommand{\cov}[2]{\mathrm{Cov}(#1,#2)}
\newcommand{\bin}[2]{\mathrm{Bin}\left(#1,#2\right)}
\newcommand{\geo}[1]{\mathrm{Geom}\left(#1\right)}
\newcommand{\normal}[2]{\mathcal{N}\left(#1, #2\right)}
\newcommand{\floor}[1]{\lfloor #1 \rfloor}
\newcommand{\Sp}[1][2]{\ensuremath{S^{#1}}}
\newcommand{\SO}[1][3]{\ensuremath{SO(#1)}}
\newcommand{\wig}{\ensuremath{\mathcal{D}}}
\newcommand{\nngp}{\ensuremath{\mathcal{K}}}
\newcommand{\id}{\ensuremath{\mathbb{I}}}

% \newcommand{\SE}{\mathrm{SE}}
\newcommand{\transp}{^\mathsf{T}}


\parskip = \baselineskip
\setlength{\parindent}{0pt}
%\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\setsecnumdepth{subsection}



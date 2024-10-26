\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diag-xelatex}[16/9/2015 Mathematics test]
\LoadClass[a4paper,11pt]{article}
\newcommand{\monades}[2]{\begin{minipage}[t]{#2\textwidth}
\begin{flushright}
\textbf{\textit{Mon'ades #1}}
\end{flushright}
\end{minipage}}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\sectionfont{\centering}
\newcommand{\titlos}[1]{
\section*{{\LARGE #1}}
\begin{center}
{\normalsize  \bf\today}\mbox{}\\
\end{center}}
\newcommand{\kaliepityxia}{\vfill
\begin{flushright}
Kal'h Epityx'ia
\end{flushright}}
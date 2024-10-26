\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diag-pan-pdflatex}[16/9/2015 Mathematics test]
\LoadClass[a4paper,11pt]{article}
\newcommand{\monades}[2]{\begin{minipage}[t]{#2\textwidth}
\begin{flushright}
\textbf{\textit{Mon'ades #1}}
\end{flushright}
\end{minipage}}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\sectionfont{\centering}
\RequirePackage{enumitem}
\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{JEMA \Alph*},itemsep=5mm,leftmargin=2cm}
\newlist{erwthma}{enumerate}{3}
\setlist[erwthma]{label=\bf{\large \Alph{themai}.\arabic*},itemsep=5mm,leftmargin=-.5cm}
\newcommand{\titlos}[1]{
\section*{{\LARGE #1}}
\begin{center}
{\normalsize  \bf\today}\mbox{}\\
\end{center}}
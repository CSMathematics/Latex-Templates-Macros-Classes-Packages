\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{askhsh-ebdomadas-web}[16/9/2015 Askhseis gia to internet]
\LoadClass[a4paper,11pt]{article}
\RequirePackage{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage{fontawesome}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\def\xroma#1{\def\@xroma{#1}}
\sectionfont{\centering}
\font\icon = "Webdings"
\font\icons = "IcoMoon-Free"
\font\myfont = "Wingdings"
\font\mymath = "MyMathSymbols" at 16pt
\newcommand{\titlos}[2]{
\begin{center}
{\large {\textcolor{\@xroma}{\scfont\textsc{Σπύρος}\,\,\textsc{Φρόνιμος}}} - {\textcolor{black!70}{\scfont\textsc{Μαθηματικός}}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icon\XeTeXglyph221} : www.math-e-matics.gr\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
ΕΦΑΡΜΟΓΕΣ ΤΩΝ ΜΑΘΗΜΑΤΙΚΩΝ ΣΤΙΣ ΕΠΙΣΤΗΜΕΣ ΚΑΙ ΤΙΣ ΤΕΧΝΕΣ\\
\vspace{1mm}
{\bf\today}
\end{center}
\vspace{1cm}
\begin{center}
{\Large\bf\MakeUppercase{#2}}
\end{center}
\section*{{\Huge \textcolor{\@xroma}{#1}}}
\vspace{-1mm}
\begin{center}
{\LARGE\bf{\MakeUppercase{Η ΑΣΚΗΣΗ ΤΗΣ ΕΒΔΟΜΑΔΑΣ}}}
\end{center}
\vspace{2cm}}
%----ΣΤΥΛ ΑΣΚΗΣΗΣ ----------  
\newcommand{\Askhsh}[1]{\noindent\textcolor{black}{
\Large{\textcolor{\@xroma}{\scfont\textsc{#1}}}}\\}{}
%---------------------------
\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\color{\@xroma}{\bf\arabic*.}}
\tkzSetUpPoint[size=7,fill=white]
\tikzstyle{pl}=[line width=0.3mm]
\tikzstyle{plm}=[line width=0.4mm]
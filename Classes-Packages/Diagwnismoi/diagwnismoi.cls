\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diagwnismoi}[16/9/2015 Diagwnismoi Mathimatikwn]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\sectionfont{\centering}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\def\xroma#1{\def\@xroma{#1}}
\def\xrwma{\@xroma}
\RequirePackage{ifthen}
\ifthenelse{\equal{\eidos}{internet}}
{\def\xrwma{\@xroma}}
{}
\ifthenelse{\equal{\eidos}{ektypwsh}}
{\def\xrwma{black}}
{}

\usepackage[left=2.00cm, right=2.00cm, top=2.00cm, bottom=2.00cm]{geometry}
\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{\textcolor{\xrwma}{ΘΕΜΑ \arabic*}},itemsep=0mm,leftmargin=0cm,itemindent=9.5mm,align=left}
\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\newlist{erwthma}{enumerate}{3}
\setlist[erwthma]{label=\bf{\large{\textcolor{\xrwma}{\Alph{themai}.\arabic*}}},itemsep=0mm,leftmargin=0.8cm}
\newcommand{\monades}[1]{
\hspace*{\fill}
\textbf{\textit{\textcolor{\xrwma}{Μονάδες #1}}}}
\newcommand{\kaliepityxia}{\vfill
\begin{flushright}
Καλή Επιτυχία!
\end{flushright}}
\font\icon = "Webdings"
\font\icons = "IcoMoon-Free"
\font\myfont = "Wingdings"
\font\mymath = "MyMathSymbols" at 16pt
\font\world = "Globe Icons" at 12pt
\newcommand{\titlos}[3]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{MathWorld.gr}}} - \scfont\textsc{Ο Κόσμος των Μαθηματικών}}
\\{\world\raisebox{-.3mm}{\XeTeXglyph95}} : www.mathworld.gr\,\,|\,\,{\icons\XeTeXglyph541} : blog.mathworld.gr\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
ΜΑΘΗΜΑΤΙΚΕΣ ΟΛΥΜΠΙΑΔΕΣ - ΔΙΑΓΩΝΙΣΜΟΙ
\end{center}
\vspace{7mm}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\vspace{-7mm}
\section*{{\huge \textcolor{\xrwma}{#2}}}
\begin{center}
{\Large\bf{#3}}
\end{center}
\vspace{1cm}}



\newcommand{\themata}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΘΕΜΑΤΑ}}}
\end{center}}
\newcommand{\askhseis}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΑΣΚΗΣΕΙΣ (Επιλέγετε 2 Θέματα)}}}
\end{center}}

\AtBeginDocument{\renewcommand*{\d}{\mathop{\kern0pt\mathrm{d}}\!{}}}


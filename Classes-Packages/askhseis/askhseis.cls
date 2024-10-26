\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{askhseis}[16/9/2015 Askhseis]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}
\RequirePackage{xcolor}
\RequirePackage[left=2.00cm, right=2.00cm, top=2.00cm, bottom=3.00cm]{geometry}
\def\xroma#1{\def\@xroma{#1}}
\RequirePackage{ifthen}
\ifthenelse{\equal{\eidos}{internet}}
{\def\xrwma{\@xroma}}
{}
\ifthenelse{\equal{\eidos}{ektypwsh}}
{\def\xrwma{black}}
{}
\font\icon = "Webdings"
\font\icons = "IcoMoon-Free"
\font\myfont = "Wingdings"
\font\mymath = "MyMathSymbols" at 16pt
\newcommand{\titlos}[3]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\footnotesize \raisebox{.2mm}{\faEnvelopeO}} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - \faPhone\ :\ 2663023079\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
ΑΣΚΗΣΕΙΣ - ΠΡΟΒΛΗΜΑΤΑ\\
\vspace{1mm}
{\bf\today}
\end{center}
\vspace{.5cm}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\Huge \textcolor{\xrwma}{#2}}}
\vspace{-1mm}
\begin{center}
{\Large\bf{\MakeUppercase{#3}}}
\end{center}
\vspace{1cm}}
\newcommand{\thewria}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΘΕΩΡΙΑ - ΕΡΩΤΗΣΕΙΣ ΚΑΤΑΝΟΗΣΗΣ}}}
\end{center}}
\newcommand{\askhseis}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΑΣΚΗΣΕΙΣ - ΠΡΟΒΛΗΜΑΤΑ}}}
\end{center}}
\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\textcolor{\xrwma}{\roman*.}}
\setlist[enumerate]{label=\bf\textcolor{\xrwma}{\large \arabic*.}}
\newcommand{\twocolkentro}[1]{
\twocolumn[
\begin{@twocolumnfalse}
#1
\end{@twocolumnfalse}]}

\newcommand{\ekthetesdeiktes}{\DeclareMathSizes{10.95}{10.95}{7}{5}
\DeclareMathSizes{6}{6}{3.8}{2.7}
\DeclareMathSizes{8}{8}{5.1}{3.6}
\DeclareMathSizes{9}{9}{5.8}{4.1}
\DeclareMathSizes{10}{10}{6.4}{4.5}
\DeclareMathSizes{12}{12}{7.7}{5.5}
\DeclareMathSizes{14.4}{14.4}{9.2}{6.5}
\DeclareMathSizes{17.28}{17.28}{11}{7.9}
\DeclareMathSizes{20.74}{20.74}{13.3}{9.4}
\DeclareMathSizes{24.88}{24.88}{16}{11.3}

\makeatletter
\AtBeginDocument{
\check@mathfonts
\fontdimen16\textfont2=2.5pt
\fontdimen17\textfont2=2.5pt
\fontdimen14\textfont2=4.5pt
\fontdimen13\textfont2=4.5pt 
}
\makeatother}
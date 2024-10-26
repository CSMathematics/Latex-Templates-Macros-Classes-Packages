\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{shmeiwseis-web}[16/9/2015 Shmeiwseis gia to internet]
\DeclareOption{askhseis}{\newcommand{\eidos}{askhseis}}

\DeclareOption{shmeiwseis}{\newcommand{\eidos}{shmeiwseis}}

\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\@ifundefined{eidos} % Check that the \classtoggle has been defined, i.e. one of the two required class options above has been specified
{\ClassError{shmeiwseis-web}{You have not used one of the required options}{You must specify one of the class options defined in the template file.}} % If one of the options has not been specified, quit with an error to that effect
{} % Otherwise do nothing
\RequirePackage{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage{fontawesome}
\RequirePackage{enumitem}
\def\xromaask#1{\def\@xromaask{#1}}
\def\xromashm#1{\def\@xromashm{#1}}
\RequirePackage{ifthen}
\ifthenelse{\equal{\eidos}{askhseis}}
{\def\xrwma{\@xromaask}
	\def\keimeno{ΑΣΚΗΣΕΙΣ ΚΑΙ ΠΡΟΒΛΗΜΑΤΑ}}
{}
\ifthenelse{\equal{\eidos}{shmeiwseis}}
{\def\xrwma{\@xromashm}
	\def\keimeno{ΣΗΜΕΙΩΣΕΙΣ ΚΑΙ ΠΑΡΑΔΕΙΓΜΑΤΑ}}
{}
\sectionfont{\centering}
\font\icon = "Webdings"
\font\icons = "IcoMoon-Free"
\font\myfont = "Wingdings"
\font\mymath = "MyMathSymbols" at 16pt
\newcommand{\titlos}[2]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}\,\,\textsc{Φρόνιμος}}} - {\textcolor{black!70}{\scfont\textsc{Μαθηματικός}}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icon\XeTeXglyph221} : www.math-e-matics.gr\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
ΕΦΑΡΜΟΓΕΣ ΤΩΝ ΜΑΘΗΜΑΤΙΚΩΝ ΣΤΙΣ ΕΠΙΣΤΗΜΕΣ ΚΑΙ ΤΙΣ ΤΕΧΝΕΣ\\
\vspace{1mm}
{\bf\today}\mbox{}\\
\vspace{2mm}
\keimeno
\end{center}
\vspace{4cm}
\section*{{\Huge \textcolor{\xrwma}{#1}}}
\vspace{-1mm}
\begin{center}
{\LARGE\bf\scfont{\MakeUppercase{#2}}}\\
\vspace{3cm}
\end{center}}
\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msm-ergasia}[16/9/2015 Mathematics test]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\DeclareOption{msm50}{\newcommand{\eggrafo}{msm50}}
\DeclareOption{msm60}{\newcommand{\eggrafo}{msm60}}
\DeclareOption{msm61}{\newcommand{\eggrafo}{msm61}}
\DeclareOption{msm62}{\newcommand{\eggrafo}{msm62}}
\DeclareOption{msm51}{\newcommand{\eggrafo}{msm51}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage[usenames,dvipsnames,rgb]{xcolor}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=2.00cm, right=2.00cm, top=2.00cm, bottom=3.00cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}
\def\xroma#1{\def\@xroma{#1}}
\RequirePackage{ifthen}
\ifthenelse{\equal{\eidos}{internet}}
{\def\xrwma{\@xroma}}
{}
\ifthenelse{\equal{\eidos}{ektypwsh}}
{\def\xrwma{black}}
{}

\ifthenelse{\equal{\eggrafo}{msm50}}
{\def\keimeno{ΘΕΜΑΤΙΚΗ ΕΝΟΤΗΤΑ ΜΣΜ50 - ΒΑΣΙΚΕΣ ΘΕΩΡΙΕΣ ΚΑΙ ΜΕΘΟΔΟΙ ΣΤΑ ΜΑΘΗΜΑΤΙΚΑ}}
{}
\ifthenelse{\equal{\eggrafo}{msm60}}
{\def\keimeno{ΘΕΜΑΤΙΚΗ ΕΝΟΤΗΤΑ ΜΣΜ60 - ΜΑΘΗΜΑΤΙΚΑ ΠΡΟΤΥΠΑ ΣΤΙΣ ΦΥΣΙΚΕΣ ΕΠΙΣΤΗΜΕΣ}}
{}
\ifthenelse{\equal{\eggrafo}{msm61}}
{\def\keimeno{ΘΕΜΑΤΙΚΗ ΕΝΟΤΗΤΑ ΜΣΜ61 - ΥΠΟΛΟΓΙΣΤΙΚΕΣ ΜΕΘΟΔΟΙ ΚΑΙ ΛΟΓΙΣΜΙΚΟ ΣΤΑ ΜΑΘΗΜΑΤΙΚΑ}}
{}
\ifthenelse{\equal{\eggrafo}{msm62}}
{\def\keimeno{ΘΕΜΑΤΙΚΗ ΕΝΟΤΗΤΑ ΜΣΜ62 - ΕΙΔΙΚΑ ΘΕΜΑΤΑ ΜΑΘΗΜΑΤΙΚΩΝ}}
{}
\ifthenelse{\equal{\eggrafo}{msm51}}
{\def\keimeno{ΘΕΜΑΤΙΚΗ ΕΝΟΤΗΤΑ ΜΣΜ51 - ΙΣΤΟΡΙΚΗ ΕΞΕΛΙΞΗ ΚΑΙ ΔΙΔΑΚΤΙΚΗ ΤΩΝ ΜΑΘΗΜΑΤΙΚΩΝ}}
{}
\font\icon = "Webdings"
\font\icons = "IcoMoon-Free"
\font\myfont = "Wingdings"
\font\mymath = "MyMathSymbols" at 16pt
\font\world = "Globe Icons" at 14pt
\newcommand{\titlos}[2]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μεταπτυχιακες Σπουδες στα Μαθηματικα}}}
\\{\footnotesize \raisebox{.2mm}{\faEnvelopeO}}\  : std123487@ac.eap.gr\,\,|\,\,Α.Μ. : 123487\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
ΛΥΣΕΙΣ ΓΡΑΠΤΩΝ ΕΡΓΑΣΙΩΝ ΘΕΜΑΤΙΚΗΣ ΕΝΟΤΗΤΑΣ\\
\vspace{1mm}
{\bf\today}
\end{center}
\vspace{.5cm}
\begin{center}
{\Large\bf\MakeUppercase{#1\tssL{η} ΕΡΓΑΣΙΑ}}
\end{center}
\section*{{\Large \textcolor{\xrwma}{\keimeno}}}
\vspace{-1mm}
\begin{center}
{\Large\bf{\MakeUppercase{#2}}}
\end{center}
\vspace{1cm}}

\AtBeginDocument{\renewcommand*{\d}{\mathop{\kern0pt\mathrm{d}}\!{}}}

\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{ΘΕΜΑ \arabic*},itemsep=0mm,leftmargin=0cm,itemindent=9.5mm,align=left}
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


\usepackage[labelfont={footnotesize,it,bf},font={footnotesize}]{caption}
\usepackage[parfill]{parskip}


\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\roman*.}
\newlist{brlist}{enumerate}{3}
\setlist[brlist]{itemsep=0mm,label=\bf\roman*.}
\setlist[itemize]{itemsep=0mm}

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
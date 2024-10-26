\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msm_Diplwmatikh}[14/10/2016 Diplwmatikh ergasia]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{book}
\RequirePackage[usenames,dvipsnames,rgb]{xcolor}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=3.17cm, right=3.17cm, top=2.54cm, bottom=2.54cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
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
\font\world = "Globe Icons" at 14pt


\RequirePackage[labelfont={footnotesize,bf},font={footnotesize}]{caption}



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
\makeatletter
\patchcmd{\@caption}{\csname fnum@#1\endcsname:
\ignorespaces#3}{\Centering
\csname fnum@#1\endcsname\ifblank{#3}{}{: \ignorespaces#3}}{}{}
\makeatother 
\usepackage[labelfont={footnotesize,it,bf},font={footnotesize}]{caption}
\usepackage[parfill]{parskip}


\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\roman*.}
\newlist{brlist}{enumerate}{3}
\setlist[brlist]{itemsep=0mm,label=\bf\roman*.}
\setlist[itemize]{itemsep=0mm}
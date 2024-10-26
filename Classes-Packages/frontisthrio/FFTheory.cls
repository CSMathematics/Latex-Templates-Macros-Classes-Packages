\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{frontisthrio}[3/7/2017 Frontisthrio]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[table]{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=2.00cm, right=2.00cm, top=2.00cm, bottom=3.00cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}
\def\xroma#1{\def\@xroma{#1}}
\RequirePackage{ifthen}
\ifthenelse{\equal{\eidos}{internet}}
{\def\xrwma{\@xroma}
\def\eikona{LogotypoFilomatheia1}}
{}
\ifthenelse{\equal{\eidos}{ektypwsh}}
{\def\xrwma{black}
\def\eikona{Logotypo-Filomatheia_1}}
{}


%\font\myfont = "Wingdings"
\font\mymath = "MyMathSymbols"
\newcommand{\titlos}[3]{
\begin{center}
\includegraphics[width=0.4\linewidth]{C:/texlive/texmf-local/tex/latex/local/frontisthrio/\eikona}\\
\vspace{-1mm}
{\faIcon{map-marker-alt}} : Ιακώβου Πολυλά 24 - \ Πεζόδρομος\,\,|\,\,{\faIcon{phone-alt}} : 26610 20144\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283 - 6955058444\\
\rule{14.7cm}{.1mm}\\
\vspace{2mm}
ΣΗΜΕΙΩΣΕΙΣ ΜΑΘΗΜΑΤΟΣ - ΘΕΩΡΙΑ, ΜΕΘΟΔΟΛΟΓΙΑ ΚΑΙ ΛΥΜΕΝΕΣ ΑΣΚΗΣΕΙΣ\\
\vspace{1mm}
{\bf\today}\\
\end{center}
\vspace{.1cm}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\Huge \textcolor{\xrwma}{#2}}}
\vspace{-1mm}
\begin{center}
{\Large\bf{\MakeUppercase{#3}}}
\end{center}
\vspace{0.5cm}}
%----ΣΤΥΛ ΑΣΚΗΣΗΣ ----------  
\newcommand{\Askhsh}[1]{\noindent\textcolor{black}{
\Large{\scfont\textsc{#1}}}\\}{}
%---------------------------
\newcommand{\lysh}{\textbf{\textcolor{\xrwma}{ΛΥΣΗ}}}
%------- ΣΤΥΛ ΠΑΡΑΔΕΙΓΜΑΤΟΣ -------
\newcounter{paradeigma}[section]
\renewcommand{\theparadeigma}{\bf\arabic{paradeigma}}   
\newcommand{\Paradeigma}[1]{\refstepcounter{paradeigma}\textcolor{black}{\textbf{\textcolor{\xrwma}{Παράδειγμα\hspace{2mm}\theparadeigma\;:}\;\hspace{1mm}}} \MakeUppercase{\textbf{#1}}\\}{}
%------- ΟΡΙΣΜΟΣ --------------
\newcounter{orismos}[section]
\renewcommand{\theorismos}{\arabic{orismos}}   
\newcommand{\Orismos}[1]{\refstepcounter{orismos}{\textbf{\textbf{\textcolor{\xrwma}{ΟΡΙΣΜΟΣ\hspace{2mm}\theorismos\;:\;}}}}\hspace{1mm} \MakeUppercase{\textbf{#1}\\}}{}
\newcommand{\orismoi}{\begin{center}
\vspace{-3mm}{\Large \textbf{\textcolor{\xrwma}{ΟΡΙΣΜΟΙ}}}\\\vspace{-2mm}
\begin{tikzpicture}
\shade[left color=white, right color=\xrwma,] (-3cm,0) rectangle (0,.2mm);
\shade[left color=\xrwma, right color=white,] (0,0) rectangle (3cm,.2mm);   
\end{tikzpicture}
\end{center}}
%--------- ΘΕΩΡΗΜΑΤΑ ------------------
\newcounter{thewrhma}[section]
\renewcommand{\thethewrhma}{\arabic{thewrhma}}  
\newcommand{\Thewrhma}[1]{\refstepcounter{thewrhma}{\textbf{\textcolor{\xrwma}{ΘΕΩΡΗΜΑ\hspace{2mm}\thethewrhma\;:\;}\hspace{1mm}}} \MakeUppercase{\textbf{#1}}\\}{}
\newcommand{\thewrhmata}{\begin{center}
{\Large {\textbf{\textcolor{\xrwma}{ΘΕΩΡΗΜΑΤΑ}}}}\\\vspace{-2mm}
\begin{tikzpicture}
\shade[left color=white, right color=\xrwma,] (-3cm,0) rectangle (0,.2mm);
\shade[left color=\xrwma, right color=white,] (0,0) rectangle (3cm,.2mm);   
\end{tikzpicture}
\end{center}}
\newcommand{\Titlos}[3]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - 6974532090\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
\keimeno\\
\vspace{1mm}
\end{center}
\vspace{3cm}
\begin{center}
{\LARGE\bf\MakeUppercase{#1}}
\end{center}
\section*{{\Huge \textcolor{\xrwma}{#2}}}
\vspace{-1mm}
\begin{center}
{\Large\bf{\MakeUppercase{#3}}}
\end{center}
\vspace{1cm}}

%---------- ΜΕΘΟΔΟΣ --------------
\newcounter{Methodos}[section]
\renewcommand{\theMethodos}{\arabic{Methodos}}
\newenvironment{Methodos}[2][\linewidth]
{\refstepcounter{Methodos}
\begin{tcolorbox}[breakable,
enhanced standard,
boxrule=0.7pt,titlerule=-.2pt,fuzzy shadow={1.5mm}{-1.5mm}{0mm}{.35mm}{black!70!white},
width=\linewidth,
title style={color=white},
overlay unbroken and first={
\path[left color=\xrwma!30,right color=white,draw=black]
([yshift=-\pgflinewidth]frame.north west) to ([yshift=-5pt]title.south west)[rounded corners=2pt] -- ([xshift=-#2-15pt,yshift=-5pt]title.south east) to[rounded corners=2pt] ([xshift=-#2,yshift=-\pgflinewidth]frame.north east) -- cycle;
},
fonttitle=\bfseries,
before=\par\medskip\noindent,
after=\par\medskip,
toptitle=3pt,
top=11pt,topsep at break=-5pt,
colback=white,title={\large \textcolor{black}{Μέθοδος \theMethodos : {\MakeUppercase{#1}}}}]}
{\end{tcolorbox}}
%------------------------------------------
%-------- ΠΑΡΑΤΗΡΗΣΕΙΣ -----------------
\newcounter{parathrhsh}[section]
\renewcommand{\theparathrhsh}{\arabic{parathrhsh}}  
\newcommand{\Parathrhsh}[1]{\refstepcounter{parathrhsh}{\textbf{Παρατήρηση\hspace{2mm}\theparathrhsh}}}{}
%---------------------------------------


\newcommand{\methodologia}{\begin{center}
{\large \textcolor{\xrwma}{\textbf{{\Large ΜΕΘΟΔΟΛΟΓΙΑ}}}}\\\vspace{-2mm}
\begin{tikzpicture}
\tikz[overlay] \shade[left color=white, right color=\xrwma,] (-3cm,0) rectangle (0,.2mm);
\tikz[overlay] \shade[left color=\xrwma, right color=white,] (0,0) rectangle (3cm,.2mm);   
\end{tikzpicture}
\end{center}}

%----------- ΠΑΡΑΤΗΡΗΣΗ------------------
\newcommand{\parat}{\tcbset{
enhanced,
colback=red!5!white,
boxrule=0.1pt,
colframe=\xrwma,
fonttitle=\bfseries}}
%-----------------------------------------



\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}

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
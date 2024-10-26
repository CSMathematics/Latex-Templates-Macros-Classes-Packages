\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diag-xelatex}[16/9/2015 Mathematics test]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\sectionfont{\centering}
\RequirePackage{enumitem}
\RequirePackage[usenames,dvipsnames,rgb]{xcolor}
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
\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{ΘΕΜΑ \textcolor{\xrwma}{\Alph*}},itemsep=0mm,leftmargin=0cm,itemindent=18mm}
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

\newcommand{\titlos}[2]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - 6974532090\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
{\bf\today}
\end{center}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ #2}}}
\vspace{1cm}}

\newcommand{\DiagLykeio}[7]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - 6974532090\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
{\bf\today\ - Κωδικός διαγωνίσματος : A#3B#4Γ#5Δ#6}
\end{center}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ \MakeUppercase{#2}}}}
\vspace{.7cm}
\begin{thema}
\item\mbox{}\\\input{1o_Thema/1_#3.tex}
\item\mbox{}\\\input{2o_Thema/2_#4.tex}
\item\mbox{}\\\input{3o_Thema/3_#5.tex}
\item\mbox{}\\\input{4o_Thema/4_#6.tex}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #7 ώρες.
\end{flushright}
\thispagestyle{empty}
\newpage}

\newcommand{\DiagGymnasio}[8]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - 6974532090\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
{\bf\today\ - Κωδικός διαγωνίσματος : A#3B#4Γ#5Δ#6}
\end{center}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ \MakeUppercase{#2}}}}
\vspace{.7cm}
\begin{thema}
\thewria
\item\mbox{}\\\input{Thewria_1o_Thema/1_#3.tex}
\item\mbox{}\\\input{Thewria_2o_Thema/2_#4.tex}
\askhseis
\item\mbox{}\\\input{Askhseis_1o_Thema/1_#5.tex}
\item\mbox{}\\\input{Askhseis_2o_Thema/2_#6.tex}
\item\mbox{}\\\input{Askhseis_3o_Thema/3_#7.tex}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #7 ώρες.
\end{flushright}
\thispagestyle{empty}
\newpage}

\newcommand{\thewria}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΘΕΩΡΙΑ (Επιλέγετε 1 Θέμα)}}}
\end{center}}
\newcommand{\askhseis}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΑΣΚΗΣΕΙΣ (Επιλέγετε 2 Θέματα)}}}
\end{center}}


\newcommand{\swstolathos}{Να χαρακτηρίσετε τις παρακάτω προτάσεις ως σωστές (Σ) ή λανθασμένες (Λ).}
\newcommand{\swstolathosd}{Να χαρακτηρίσετε τις παρακάτω προτάσεις ως σωστές (Σ) ή λανθασμένες (Λ). Στη συνέχεια να διορθώσετε τις προτάσεις που είναι λανθασμένες γράφοντας τη σωστή απάντηση.}

\RequirePackage[dvipsone]{insdljs}
\RequirePackage[testmode]{rangen}

\newcommand{\TyxaioDiagLykeio}[7]{\RandomZ{\a}{1}{#3}
\RandomZ{\b}{1}{#4}
\RandomZ{\c}{1}{#5}
\RandomZ{\d}{1}{#6}
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - 6974532090\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
{\bf\today\ - Κωδικός διαγωνίσματος : Α\a Β\b Γ\c Δ\d }
\end{center}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ \MakeUppercase{#2}}}}
\vspace{.7cm}
\begin{thema}
\item \input{1o_Thema/1_\a.tex}
\item \input{2o_Thema/2_\b.tex}
\item \input{3o_Thema/3_\c.tex}
\item \input{4o_Thema/4_\d.tex}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #7 ώρες.
\end{flushright}
\thispagestyle{empty}
\newpage}
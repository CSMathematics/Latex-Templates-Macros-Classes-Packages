\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diag-pan-xelatex}[16/9/2015 Mathematics test]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\sectionfont{\centering}
\usepackage[left=2.00cm, right=2.00cm, top=2.00cm, bottom=2.00cm]{geometry}
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
\RequirePackage{enumitem}
\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{ΘΕΜΑ \Alph*},itemsep=0mm,leftmargin=.7cm,itemindent=1.2cm}
\newlist{erwthma}{enumerate}{3}
\setlist[erwthma]{label=\bf{\large{\textcolor{\xrwma}{\Alph{themai}.\arabic*}}},itemsep=0mm,leftmargin=.3cm}
\newcommand{\monades}[1]{
\mbox{}\\
\hspace*{\fill}
\textbf{\textit{\textcolor{\xrwma}{Μονάδες #1}}}}
\font\icon = "Webdings"
\font\world = "Globe Icons" at 12pt
\font\icons = "IcoMoon-Free"
\font\myfont = "Wingdings"
\newcommand{\titlos}[2]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\footnotesize \raisebox{.2mm}{\faEnvelopeO}}\ : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 693 232 7283 - 697 453 2090\\
{\world\raisebox{-.3mm}{\XeTeXglyph48}} : www.MathWorld.gr\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
{\bf\today}
\end{center}
\begin{center}
{\Large\bf\MakeUppercase{#1}}\\\vspace{2mm}
{\large \textbf{ΔΙΑΓΩΝΙΣΜΑ}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{#2}}}
\vspace{1cm}}
\newcommand{\thewria}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΘΕΩΡΙΑ}}}
\end{center}}
\newcommand{\askhseis}{
\begin{center}
{\textbf{\textcolor{\xrwma}{\Large ΑΣΚΗΣΕΙΣ}}}
\end{center}}

\newcommand{\swstolathos}{Να χαρακτηρίσετε τις παρακάτω προτάσεις ως σωστές (Σ) ή λανθασμένες (Λ).}
\newcommand{\swstolathosd}{Να χαρακτηρίσετε τις παρακάτω προτάσεις ως σωστές (Σ) ή λανθασμένες (Λ). Στη συνέχεια να διορθώσετε τις προτάσεις που είναι λανθασμένες γράφοντας τη σωστή απάντηση.}
\newcommand{\kaliepityxia}{\vfill
\begin{flushright}
Καλή Επιτυχία!
\end{flushright}}

\newcommand{\DiagLykeio}[7]{
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\footnotesize \raisebox{.2mm}{\faEnvelopeO}}\ : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 693 232 7283 - 697 453 2090\\
\\
{\world\raisebox{-.3mm}{\XeTeXglyph48}} : www.MathWorld.gr\\
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
\item\input{1o_Thema/1_#3.tex}
\item\input{2o_Thema/2_#4.tex}
\item\input{3o_Thema/3_#5.tex}
\item\input{4o_Thema/4_#6.tex}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #7 ώρες.
\end{flushright}
\thispagestyle{empty}
\newpage}
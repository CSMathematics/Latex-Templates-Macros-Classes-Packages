\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FFExam}[30/10/2024 Φροντιστήριο Φιλομάθεια]

\DeclareOption{classic}{\newcommand{\style}{classic}}
\DeclareOption{modern}{\newcommand{\style}{modern}}

\DeclareOption{A}{\newcommand{\type}{A}}
\DeclareOption{B}{\newcommand{\type}{B}}
\DeclareOption{C}{\newcommand{\type}{C}}
\DeclareOption{D}{\newcommand{\type}{D}}
\DeclareOption{E}{\newcommand{\type}{E}}
\DeclareOption{F}{\newcommand{\type}{F}}
\DeclareOption{G}{\newcommand{\type}{G}}
\DeclareOption{H}{\newcommand{\type}{H}}
\DeclareOption{I}{\newcommand{\type}{I}}

\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[table]{xcolor}
\RequirePackage{sectsty,tabularray}
\RequirePackage{pdfpages,tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=1.50cm, right=1.50cm, top=2.00cm, bottom=2.00cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}

\RequirePackage{ifthen}

%------ ΣΥΝΘΗΚΕΣ IF ELSE ΓΙΑ ΤΥΠΟ ΔΙΑΓΩΝΙΣΜΑΤΟΣ ----
\RequirePackage{xparse}

\ExplSyntaxOn
% this assumes that \classversion contains the version

\NewDocumentCommand{\ifTypos}{mmO{}}
 {% #1 is a list of items of the form {year,...}
  % #2 is the code to execute in case of a match
  % #3 (optional) is the code to use in case of no match
  \str_if_in:nVTF { #1 } \TyposDiagvnismatos { #2 } { #3 }
 }
\prg_generate_conditional_variant:Nnn \str_if_in:nn { nV } { T, F, TF }
\ExplSyntaxOff
%-----------------------------------------------

\ifthenelse{\equal{\type}{A}}
{\definecolor{xrwma}{HTML}{a12120}
\def\perigrafi{Τα διαγωνίσματα "Τύπου A" αποτελούνται αποκλειστικά από θέματα πάνω στη θεωρία. Τα είδη ασκήσεων που περιέχονται είναι
\begin{itemize}
\item Διατύπωση Ορισμού - Πρότασης
\item Απόδειξη θεωρήματος
\item Ερωτήσεις Σωστό - Λάθος
\item Αντιστοίχηση
\item Πολλαπλής επιλογής
\item Αντιπαραδείγματα
\item Διόρθωση λάθους
\item Επιλογή θεωρίας για επίλυση άσκησης
\item Συμπλήρωση κενού
\end{itemize}
}
\def\typos{Α - ΘΕΜΑΤΑ ΘΕΩΡΙΑΣ}}{}
\ifthenelse{\equal{\type}{B}}
{\definecolor{xrwma}{HTML}{00a7a7}
\def\perigrafi{}
\def\typos{Β - ΓΕΝΙΚΑ ΘΕΜΑΤΑ}}{}
\ifthenelse{\equal{\type}{C}}
{\definecolor{xrwma}{HTML}{00a700}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Γ" αποτελούνται από συνδυαστικά θέματα πάνω στην εξεταστέα ύλη της χρονιάς. Κάθε θέμα περιλαμβάνει διάφορά τμήματα της ύλης και αποτελείται απο διαδοχικά ερωτήματα. Βαθμολογείται με 4/20 μοναδες για το γυμνάσιο και 25/100 μονάδες για το λύκειο.}
\def\typos{Γ - ΣΥΝΔΥΑΣΤΙΚΑ ΘΕΜΑΤΑ}}{}
\ifthenelse{\equal{\type}{D}}
{\definecolor{xrwma}{HTML}{c7c700}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Δ" αποτελούνται αποκλειστικά απο προβλήματα. Δίνονται }
\def\typos{Δ - ΠΡΟΒΛΗΜΑΤΑ}}{}
\ifthenelse{\equal{\type}{E}}
{\definecolor{xrwma}{HTML}{e85d00}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Ε" είναι διαγνωστικά τέστ που διεξάγωνται στην αρχή της σχολικής χρονιάς με σκοπό την αξιολόγηση των γνώσεων του μαθητή στην περσινή ύλη. Καλύπτουν όσο το δυνατόν περισσότερο μέρος της εξεταστέας ύλης κατά κύριο λόγο της περασμένης χρονιάς αλλά και των προηγούμενων τάξεων.}
\def\typos{Ε - ΔΙΑΓΝΩΣΤΙΚΑ ΤΕΣΤ}}{}
\ifthenelse{\equal{\type}{F}}
{\definecolor{xrwma}{HTML}{aa00d4}
\def\perigrafi{Τα διαγωνίσματα "Τύπου ΣΤ"}
\def\typos{ΣΤ - ΑΣΚΗΣΕΙΣ ΣΧΟΛΙΚΟΥ ΒΙΒΛΙΟΥ}}{}
\ifthenelse{\equal{\type}{G}}
{\definecolor{xrwma}{HTML}{0000ff}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Ζ"}
\def\typos{Ζ - ΘΕΜΑΤΑ ΕΞΕΤΑΣΕΩΝ}}{}
\ifthenelse{\equal{\type}{H}}
{\definecolor{xrwma}{HTML}{4d4d4d}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Η"}
\def\typos{Η - ΑΥΞΗΜΕΝΗΣ ΔΥΣΚΟΛΙΑΣ}}{}
\ifthenelse{\equal{\type}{I}}
{\definecolor{xrwma}{HTML}{000000}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Θ"}
\def\typos{Θ - ΜΑΘΗΜΑΤΙΚΟΙ ΔΙΑΓΩΝΙΣΜΟΙ}}{}


\ifthenelse{\equal{\style}{classic}}
{
\newcommand{\titlos}[3]{
	\pagenumbering{gobble}
	\includepdf[pages=-,pagecommand={},width=\paperwidth]{\type.pdf}
	\perigrafi
	\newpage
	\pagenumbering{arabic}
	\begin{center}
	{\begin{figure}[h]
	\vspace{-10mm}
	\centering
	\includegraphics[width=0.4\linewidth]{Logo.jpg}
	\end{figure}}\vspace{-5mm}
	{\faIcon{map-marker-alt}} : Ιακώβου Πολυλά 24 - \ Πεζόδρομος\,\,|\,\,{\faIcon{phone-alt}} : 26610 20144\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283 - 6955058444\\
	\rule{14.7cm}{.1mm}\\
	\vspace{2mm}
	ΔΙΑΓΩΝΙΣΜΑ\\
	\vspace{1mm}
	{\bf\today}\\
	\vspace{.5cm}
	{\Large\bf\MakeUppercase{#1}}
	\vspace{-2mm}
	\section*{{\Huge \textcolor{xrwma}{#2}}}
	\vspace{-1mm}
	{\Large\bf{\MakeUppercase{#3}}}
	\end{center}
	\vspace{1cm}
}
}
{}

\ifthenelse{\equal{\style}{modern}}
{
\newcommand{\titlos}[3]{
	\pagenumbering{gobble}
	\includepdf[pages=-,pagecommand={},width=\paperwidth]{\type.pdf}
	\perigrafi
	\newpage
	\pagenumbering{arabic}
	\begin{tikzpicture}[overlay,remember picture]
	\fill[xrwma]($(current page.north west)$)--($(current page.north west)+(2cm,0)$)--($(current page.north west)+(2cm,-2.4cm)$)--($(current page.north west)+(-2cm,-2.4cm)$)--cycle;
	\node (fig1) at ($(current page.north west)+(1cm,-1.2cm)$)
	{\includegraphics[width=0.07\linewidth]{logo.png}};
	\node[gray2] at ($(0,0)+(-2.4cm,1.8cm)$) {\kerkissans{Φ\,ΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
	\node[xrwma] at ($(0,0)+(-2.4cm,1.2cm)$) {\kerkissans{\huge {\fontsize{28}{33.6}\selectfont Φ\,ΙΛΟΜΑΘΕΙΑ}}};
	\draw[gray4] (-5.2,.7)--(.4,.7);
	\node at ($(0,0)+(-2.4cm,0.3cm)$) {\textcolor{xrwma}{\faMapMarker*} Ιακώβου Πολυλά 24, Πεζόδρομος};
	\node (title) at ($(current page.north east)+(-3.4cm,-.7cm)$){\textcolor{gray2}{ \kerkissans{\LARGE ΔΙΑΓΩΝΙΣΜΑ ΕΝΟΤΗΤΑΣ}}};
	\node[below=of title.east,anchor=east,yshift=3mm] (mob) {\textcolor{xrwma}{\faPhone*} 26610 20144 - \textcolor{xrwma}{\faMobile*\ \faTelegram\ \faViber} 693 232 7283};
	\node[below=of mob.east,anchor=east,yshift=4mm] (fb) {\textcolor{xrwma}{\faFacebook} Φροντιστήριο Φιλομάθεια - \textcolor{xrwma}{\faInstagram}\ {\eng{front\_filomatheia}}};
	\end{tikzpicture}
	\vspace{10mm}\mbox{}\\
	\centering
	\kerkissans{{\huge #1 - #2}\\\vspace{2mm} {\LARGE #3}}\\\vspace{4mm}{\kerkissans{\today}}\\\vspace{3mm}
}
}
{}
%----ΣΤΥΛ ΑΣΚΗΣΗΣ ----------  
\newcommand{\Askhsh}[1]{\noindent\textcolor{black}{
\Large{\scfont\textsc{#1}}}\\}{}
%---------------------------
\newcommand{\lysh}{\textbf{\textcolor{xrwma}{ΛΥΣΗ}}}

\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{ΘΕΜΑ \textcolor{xrwma}{\Alph*}},itemsep=0mm,leftmargin=0cm,itemindent=18mm}
\newlist{erwthma}{enumerate}{3}
\setlist[erwthma]{label=\bf{\large{\textcolor{xrwma}{\Alph{themai}.\arabic*}}},itemsep=0mm,leftmargin=0.8cm}
\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\roman*.}
\newlist{brlist}{enumerate}{3}
\setlist[brlist]{itemsep=0mm,label=\bf\roman*.}
\newlist{bhma}{enumerate}{3}
\setlist[bhma]{label=\bf\textit{\arabic*\textsuperscript{o}\;Βήμα :},leftmargin=0cm,itemindent=1.8cm,ref=\bf{\arabic*\textsuperscript{o}\;Βήμα}}
\newlist{tropos}{enumerate}{3}
\setlist[tropos]{label=\bf\textit{\arabic*\textsuperscript{oς}\;Τρόπος :},leftmargin=0cm,itemindent=2.3cm,ref=\bf{\arabic*\textsuperscript{oς}\;Τρόπος}}
% Αν μπει το bhma μεσα σε tropo τότε
%\begin{bhma}[leftmargin=.7cm]


\newcommand{\ekthetesdeiktes}{
	\DeclareMathSizes{10.95}{10.95}{7}{5}
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
	\AtBeginDocument
	{
		\check@mathfonts
		\fontdimen16\textfont2=2.5pt
		\fontdimen17\textfont2=2.5pt
		\fontdimen14\textfont2=4.5pt
		\fontdimen13\textfont2=4.5pt 
	}
	\makeatother
}

\newcommand{\kerkissans}[1]{{\fontfamily{maksf}\selectfont \textbf{#1}}}
\RequirePackage[explicit]{titlesec}


\setlength{\columnsep}{5mm}
\titleformat{\paragraph}
{\large}%
{}{0em}%
{\textcolor{xrwma}{\faSquare\ \ \kerkissans{\bmath{#1}}}}
\setlength{\parindent}{0pt}
\titlespacing{\paragraph}{0mm}{2mm}{2mm}
\newcommand{\eng}[1]{\selectlanguage{english}#1\selectlanguage{greek}}

\DeclareTblrTemplate{caption}{nocaptemplate}{}
\DeclareTblrTemplate{capcont}{nocaptemplate}{}
\DeclareTblrTemplate{contfoot}{nocaptemplate}{}
\NewTblrTheme{mytabletheme}{
\SetTblrTemplate{caption}{nocaptemplate}{}
\SetTblrTemplate{capcont}{nocaptemplate}{}
\SetTblrTemplate{contfoot}{nocaptemplate}{}
}

\NewTblrEnviron{mytblr}
\SetTblrStyle{firsthead}{font=\bfseries}
\SetTblrStyle{firstfoot}{fg=xrwma}
\SetTblrOuter[mytblr]{theme=mytabletheme}
\SetTblrInner[mytblr]{
rowspec={t{7mm}},columns = {c},
width = 0.85\linewidth,
row{odd} = {bg=xrwma!50!white,fg=black,ht=8mm},
row{even} = {bg=xrwma!30!white,fg=black,ht=8mm},
hlines={white},vlines={white},
row{1} = {bg=xrwma, fg=white, font=\bfseries\fontfamily{maksf}},rowhead = 1,
hline{2} = {.7mm}, % midrule  
}

\newcommand{\diarkeia}[1]{\begin{flushright}
Διάρκεια εξετάσεων : #1 ώρες.
\end{flushright}}

\newcommand{\kwdikos}[1]{
\begin{flushright}
Κωδικός Διαγωνίσματος: #1
\end{flushright}}

\newcommand{\swstolathospan}{Να χαρακτηρίσετε καθεμία από τις παρακάτω προτάσεις ως \textbf{Σωστή} ή \textbf{Λανθασμένη}.}


\newcommand{\tss}[1]{\textsuperscript{#1}}
\newcommand{\tssL}[1]{\MakeLowercase{\textsuperscript{#1}}}

\newcommand{\epiloghthewria}{
\begin{center}
{\textbf{\textcolor{xrwma}{\Large ΘΕΩΡΙΑ (Επιλέγετε 1 Θέμα)}}}
\end{center}}
\newcommand{\epiloghaskhseis}{
\begin{center}
{\textbf{\textcolor{xrwma}{\Large ΑΣΚΗΣΕΙΣ (Επιλέγετε 2 Θέματα)}}}
\end{center}}

\newcommand{\kaliepityxia}{\vfill
\begin{flushright}
Καλή Επιτυχία!
\end{flushright}}
\newcommand{\monades}[1]{
\hspace*{\fill}
\textbf{\textit{\textcolor{xrwma}{Μονάδες #1}}}}
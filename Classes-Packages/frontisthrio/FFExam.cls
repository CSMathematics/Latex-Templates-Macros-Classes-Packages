\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{frontisthrio-diag}[8/4/2020 Frontisthrio diagwnisma]
\DeclareOption{ektypwsh}{\newcommand{\eidos}{ektypwsh}}
\DeclareOption{internet}{\newcommand{\eidos}{internet}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[table]{xcolor}
%\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage{pdfpages,tikz,tkz-euclide}
\RequirePackage{enumitem,multicol,multirow}
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

%\font\icon = "Webdings"
%\font\mymath = "MyMathSymbols" at 16pt


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




\newcommand{\titlos}[2]{
\pagenumbering{gobble}
\includepdf[pages=-,pagecommand={},width=\paperwidth]{C:/texlive/texmf-local/tex/latex/local/frontisthrio/ekswfyllo\TyposDiagvnismatos.pdf}
\ifTypos{A}{\def\perigrafi{Τα διαγωνίσματα "Τύπου A" αποτελούνται αποκλειστικά από θέματα πάνω στη θεωρία. Τα είδη ασκήσεων που περιέχονται είναι
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
\def\typos{Α - ΘΕΜΑΤΑ ΘΕΩΡΙΑΣ}}
\ifTypos{B}{\def\perigrafi{Τα διαγωνίσματα "Τύπου Β" περιέχουν θέματα σύμφωνα με τις οδηγίες του υπουργείου. Συγκεκριμένα
\begin{itemize}
\item για το γυμνάσιο 2 θέματα θεωρίας όπου το καθένα καλύπτει ένα αντικείμενο της εξεταστέας ύλης καθώς και 3 ασκήσεις ίδιου τύπου.
\item για το λύκειο 4 θέματα.
\end{itemize}
\begin{alist}
\item Το πρώτο θέμα αποτελείται από δύο μέρη. Το πρώτο μέρος περιέχει πέντε (05) ερωτήσεις αντικειμενικού τύπου (πολλαπλής επιλογής, Σωστού - Λάθους, αντιστοίχισης). Στο δεύτερο μέρος ζητείται η απόδειξη μίας απλής πρότασης (ιδιότητας, λήμματος, θεωρήματος ή πορίσματος), που είναι αποδεδειγμένη στο σχολικό εγχειρίδιο.
\item Το δεύτερο θέμα αποτελείται από μία άσκηση που είναι εφαρμογή ορισμών, αλγορίθμων ή προτάσεων (ιδιοτήτων, θεωρημάτων, πορισμάτων).
\item Το τρίτο θέμα αποτελείται από μία άσκηση που απαιτεί από τον μαθητή ικανότητα συνδυασμού και σύνθεσης εννοιών και αποδεικτικών ή υπολογιστικών διαδικασιών.
\item Το τέταρτο θέμα αποτελείται από μία άσκηση ή ένα πρόβλημα που η λύση του απαιτεί από τον μαθητή ικανότητες συνδυασμού και σύνθεσης γνώσεων, αλλά και την ανάληψη πρωτοβουλιών για την ανάπτυξη στρατηγικών επίλυσής του.
\end{alist}}
\def\typos{Β - ΓΕΝΙΚΑ ΘΕΜΑΤΑ}}
\ifTypos{C}{\def\perigrafi{Τα διαγωνίσματα "Τύπου Γ" αποτελούνται από συνδυαστικά θέματα πάνω στην εξεταστέα ύλη της χρονιάς. Κάθε θέμα περιλαμβάνει διάφορά τμήματα της ύλης και αποτελείται απο διαδοχικά ερωτήματα. Βαθμολογείται με 4/20 μοναδες για το γυμνάσιο και 25/100 μονάδες για το λύκειο.}
\def\typos{Γ - ΣΥΝΔΥΑΣΤΙΚΑ ΘΕΜΑΤΑ}}
\ifTypos{D}
{\def\perigrafi{Τα διαγωνίσματα "Τύπου Δ" αποτελούνται αποκλειστικά απο προβλήματα. Δίνονται }
\def\typos{Δ - ΠΡΟΒΛΗΜΑΤΑ}}
\ifTypos{E}
{\def\perigrafi{Τα διαγωνίσματα "Τύπου Ε" είναι διαγνωστικά τέστ που διεξάγωνται στην αρχή της σχολικής χρονιάς με σκοπό την αξιολόγηση των γνώσεων του μαθητή στην περσινή ύλη. Καλύπτουν όσο το δυνατόν περισσότερο μέρος της εξεταστέας ύλης κατά κύριο λόγο της περασμένης χρονιάς αλλά και των προηγούμενων τάξεων.}
\def\typos{Ε - ΔΙΑΓΝΩΣΤΙΚΑ ΤΕΣΤ}}
\ifTypos{F}
{\def\perigrafi{Τα διαγωνίσματα "Τύπου ΣΤ"}
\def\typos{ΣΤ - ΑΣΚΗΣΕΙΣ ΣΧΟΛΙΚΟΥ ΒΙΒΛΙΟΥ}}
\ifTypos{G}
{\def\perigrafi{Τα διαγωνίσματα "Τύπου Ζ"}
\def\typos{Ζ - ΘΕΜΑΤΑ ΕΞΕΤΑΣΕΩΝ}}
\ifTypos{H}
{\def\perigrafi{Τα διαγωνίσματα "Τύπου Η"}
\def\typos{Η - ΑΥΞΗΜΕΝΗΣ ΔΥΣΚΟΛΙΑΣ}}
\ifTypos{I}
{\def\perigrafi{Τα διαγωνίσματα "Τύπου Θ"}
\def\typos{Θ - ΜΑΘΗΜΑΤΙΚΟΙ ΔΙΑΓΩΝΙΣΜΟΙ}}
\perigrafi
\newpage
\pagenumbering{arabic}
\begin{center}
\includegraphics[width=0.4\linewidth]{C:/texlive/texmf-local/tex/latex/local/frontisthrio/\eikona}\\
\vspace{-1mm}
{\faIcon{map-marker-alt}} : Ιακώβου Πολυλά 24 - \ Πεζόδρομος\,\,|\,\,{\faIcon{phone-alt}} : 26610 20144\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283 - 6955058444\\
\vspace{-1mm}
\rule{14.7cm}{.1mm}\\
\vspace{2mm}
{\textbf{\today}}\\
\vspace{3mm}
{\Large \textbf{ΔΙΑΓΩΝΙΣΜΑ ΤΥΠΟΥ : \typos}}
\end{center}

\begin{center}
{\Large\MakeUppercase{\textbf{#1}}}
\end{center}
\vspace{-8mm}
\section*{\huge \textcolor{\xrwma}{#2}}
\vspace{5mm}}

\newcommand{\monades}[1]{
\hspace*{\fill}
\textbf{\textit{\textcolor{\xrwma}{Μονάδες #1}}}}
\newcommand{\kaliepityxia}{\vfill
\begin{flushright}
Καλή Επιτυχία!
\end{flushright}}

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

\newcommand{\DiagLykeio}[7]{
\begin{center}
{\begin{figure}[h]
\centering
\includegraphics[width=0.4\linewidth]{C:/texlive/texmf-local/tex/latex/local/frontisthrio/\eikona}
\end{figure}}\vspace{-5mm}
{\faIcon{map-marker-alt}} : Ιακώβου Πολυλά 24 - \ Πεζόδρομος\,\,|\,\,{\faIcon{phone-alt}} : 26610 20144\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283 - 6955058444\\
\rule{14.7cm}{.1mm}\\
\vspace{2mm}
{\bf \today}
\end{center}

\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ \MakeUppercase{#2}}}}
\vspace{.7cm}
\begin{thema}
\item\mbox{}\\\input{#3.tex"}
\item\mbox{}\\\input{#4.tex"}
\item\mbox{}\\\input{#5.tex"}
\item\mbox{}\\\input{#6.tex"}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #7 ώρες.
\end{flushright}
\thispagestyle{empty}
\newpage}

\newcommand{\DiagGymnasio}[8]{
\begin{center}
{\begin{figure}[h]
\centering
\includegraphics[width=0.4\linewidth]{C:/texlive/texmf-local/tex/latex/local/frontisthrio/\eikona}
\end{figure}}\vspace{-5mm}
{\faIcon{map-marker-alt}} : Ιακώβου Πολυλά 24 - \ Πεζόδρομος\,\,|\,\,{\faIcon{phone-alt}} : 26610 20144\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283 - 6955058444\\
\rule{14.7cm}{.1mm}\\
\vspace{2mm}
{\bf \today}
\end{center}

\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ \MakeUppercase{#2}}}}
\vspace{.7cm}
\begin{thema}
\thewria
\item\mbox{}\\\input{#3.tex"}
\item\mbox{}\\\input{#4.tex"}
\askhseis
\item\mbox{}\\\input{#5.tex"}
\item\mbox{}\\\input{#6.tex"}
\item\mbox{}\\\input{#7.tex"}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #8 ώρες.
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
\newcommand{\swstolathospan}{Να χαρακτηρίσετε καθεμία από τις παρακάτω προτάσεις ως \textbf{Σωστή} ή \textbf{Λανθασμένη}.}
 
%\RequirePackage[dvipsone]{insdljs}
%\RequirePackage[testmode]{rangen}

\newcommand{\TyxaioDiagLykeio}[7]{\RandomZ{\a}{1}{#3}
\RandomZ{\b}{1}{#4}
\RandomZ{\c}{1}{#5}
\RandomZ{\d}{1}{#6}
\begin{center}
{\large {\textcolor{\xrwma}{\scfont\textsc{Σπύρος}}\,\,\textcolor{\xrwma}{\scfont\textsc{Φρόνιμος}}} - {\scfont\textsc{Μαθηματικός}}}
\\{\myfont\XeTeXglyph13} : spyrosfronimos@gmail.com\,\,|\,\,{\icons\XeTeXglyph188} : 6932327283 - 6974532090\\
\rule{12.7cm}{.1mm}\\
\vspace{2mm}
{\bf\today\ - Κωδικός διαγωνίσματος : }
\end{center}
\begin{center}
{\Large\bf\MakeUppercase{#1}}
\end{center}
\section*{{\huge \textcolor{\xrwma}{ΔΙΑΓΩΝΙΣΜΑ \MakeUppercase{#2}}}}
\vspace{.7cm}
\begin{thema}
\item \input{\a.tex"}
\item \input{\b.tex"}
\item \input{\c.tex"}
\item \input{\d.tex"}
\end{thema}
\begin{flushright}
Διάρκεια εξετάσεων : #7 ώρες.
\end{flushright}
\thispagestyle{empty}
\newpage}


\newcommand{\diarkeia}[1]{\begin{flushright}
Διάρκεια εξετάσεων : #1 ώρες.
\end{flushright}}

\newcommand{\kwdikos}[1]{
\begin{flushright}
Κωδικός Διαγωνίσματος: #1
\end{flushright}}


\newcommand{\tss}[1]{\textsuperscript{#1}}
\newcommand{\tssL}[1]{\MakeLowercase{\textsuperscript{#1}}}

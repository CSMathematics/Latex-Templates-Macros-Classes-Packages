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
\DeclareOption{J}{\newcommand{\type}{J}}
\DeclareOption{K}{\newcommand{\type}{K}}
\DeclareOption{L}{\newcommand{\type}{L}}
\DeclareOption{M}{\newcommand{\type}{M}}

\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[table]{xcolor}
\RequirePackage{sectsty,tabularray}
\RequirePackage{pdfpages,tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=1.50cm, right=1.50cm, top=2.00cm, bottom=2.00cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}

\definecolor{corpDark}{HTML}{1F2532}   % Dark Blue-Grey background
\definecolor{maincolor}{HTML}{c92615} % Bright Orange accent
\definecolor{secondarycolor}{HTML}{ff9000} % Amber/Yellow accent

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

\RequirePackage{xfp} % Για αριθμητικές πράξεις

\newcommand{\schoolyear}{%
    \edef\currentyear{\the\year}% Αποθήκευση τρέχοντος έτους
    \edef\currentmonth{\the\month}% Αποθήκευση τρέχοντος μήνα
    % Αν ο μήνας είναι από Σεπτέμβριο (9) και μετά, είμαστε στην αρχή του σχολικού έτους
    \ifnum\currentmonth>8
        \currentyear\ - \fpeval{\currentyear + 1}%
    \else
        % Αν είναι από Ιανουάριο έως Αύγουστο, είμαστε στο δεύτερο μισό
        \fpeval{\currentyear - 1} - \currentyear%
    \fi
}

\ifthenelse{\equal{\type}{A}}
{\definecolor{maincolor}{HTML}{a12120}
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
{\definecolor{maincolor}{HTML}{007aa7}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Β" αποτελούνται από γενικά θέματα που καλύπτουν την τρέχουσα ύλη. Στόχος είναι ο περιοδικός έλεγχος της προόδου του μαθητή και η εξοικείωση με τη δομή των εξετάσεων.}
\def\typos{Β - ΓΕΝΙΚΑ ΘΕΜΑΤΑ}}{}
\ifthenelse{\equal{\type}{C}}
{\definecolor{maincolor}{HTML}{00a700}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Γ" αποτελούνται από συνδυαστικά θέματα πάνω στην εξεταστέα ύλη της χρονιάς. Κάθε θέμα περιλαμβάνει διάφορα τμήματα της ύλης και αποτελείται από διαδοχικά ερωτήματα αυξανόμενης δυσκολίας.}
\def\typos{Γ - ΣΥΝΔΥΑΣΤΙΚΑ ΘΕΜΑΤΑ}}{}
\ifthenelse{\equal{\type}{D}}
{\definecolor{maincolor}{HTML}{c7c700}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Δ" αποτελούνται αποκλειστικά από προβλήματα. Εστιάζουν στην ικανότητα του μαθητή να μετατρέπει λεκτικές περιγραφές σε μαθηματικά μοντέλα και να επιλύει σύνθετα σενάρια.}
\def\typos{Δ - ΠΡΟΒΛΗΜΑΤΑ}}{}
\ifthenelse{\equal{\type}{E}}
{\definecolor{maincolor}{HTML}{e85d00}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Ε" είναι διαγνωστικά τεστ που διεξάγονται στην αρχή της χρονιάς. Σκοπός είναι η αξιολόγηση των προαπαιτούμενων γνώσεων από προηγούμενες τάξεις και ο εντοπισμός τυχόν μαθησιακών κενών.}
\def\typos{Ε - ΔΙΑΓΝΩΣΤΙΚΑ ΤΕΣΤ}}{}
\ifthenelse{\equal{\type}{F}}
{\definecolor{maincolor}{HTML}{aa00d4}
\def\perigrafi{Τα διαγωνίσματα "Τύπου ΣΤ" περιλαμβάνουν επιλεγμένες ασκήσεις και προβλήματα από το σχολικό βιβλίο. Στόχος είναι η πλήρης εμπέδωση της βασικής ύλης και των μεθοδολογιών που προτείνει το Υπουργείο Παιδείας.}
\def\typos{ΣΤ - ΑΣΚΗΣΕΙΣ ΣΧΟΛΙΚΟΥ ΒΙΒΛΙΟΥ}}{}
\ifthenelse{\equal{\type}{G}}
{\definecolor{maincolor}{HTML}{0000ff}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Ζ" αποτελούνται από αυθεντικά θέματα προηγούμενων ετών (ενδοσχολικών ή Πανελλαδικών εξετάσεων). Προσφέρουν μια ρεαλιστική εμπειρία των τελικών εξετάσεων.}
\def\typos{Ζ - ΘΕΜΑΤΑ ΕΞΕΤΑΣΕΩΝ}}{}
\ifthenelse{\equal{\type}{H}}
{\definecolor{maincolor}{HTML}{4d4d4d}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Η" περιλαμβάνουν θέματα αυξημένης δυσκολίας και πρωτοτυπίας. Απευθύνονται σε μαθητές που επιδιώκουν την άριστη επίδοση και την βαθύτερη κατανόηση των μαθηματικών εννοιών.}
\def\typos{Η - ΑΥΞΗΜΕΝΗΣ ΔΥΣΚΟΛΙΑΣ}}{}
\ifthenelse{\equal{\type}{I}}
{\definecolor{maincolor}{HTML}{000000}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Θ" είναι προσαρμοσμένα στις απαιτήσεις των Μαθηματικών Διαγωνισμών (Θαλής, Ευκλείδης, Αρχιμήδης). Εστιάζουν στην κριτική σκέψη και την ευρηματικότητα.}
\def\typos{Θ - ΜΑΘΗΜΑΤΙΚΟΙ ΔΙΑΓΩΝΙΣΜΟΙ}}{}
\ifthenelse{\equal{\type}{J}}
{\definecolor{maincolor}{HTML}{c92615}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Ι" αποτελούν Προσομοιώσεις Πανελλαδικών Εξετάσεων. Πρόκειται για 3ωρες δοκιμασίες που ακολουθούν πιστά τη δομή, τη βαθμολόηση και το ύφος των επίσημων εξετάσεων.}
\def\typos{Ι - ΠΡΟΣΟΜΟΙΩΣΗ ΠΑΝΕΛΛΑΔΙΚΩΝ}}{}
\ifthenelse{\equal{\type}{K}}
{\definecolor{maincolor}{HTML}{ff9000}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Κ" είναι ολιγόλεπτα τεστ (Quiz) διάρκειας 15-20 λεπτών. Σκοπός τους είναι ο γρήγορος έλεγχος κατανόησης μιας συγκεκριμένης ενότητας ή μεθοδολογίας κατά τη διάρκεια του μαθήματος.}
\def\typos{Κ - ΟΛΙΓΟΛΕΠΤΟ ΤΕΣΤ}}{}
\ifthenelse{\equal{\type}{L}}
{\definecolor{maincolor}{HTML}{1F2532}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Λ" είναι διαδραστικά φύλλα αξιολόγησης. Περιλαμβάνουν ψηφιακό υλικό και δυνατότητα πρόσβασης σε βιντεο-λύσεις των θεμάτων για την υποστήριξη της αυτοδιόρθωσης.}
\def\typos{Λ - ΔΙΑΔΡΑΣΤΙΚΟ ΔΙΑΓΩΝΙΣΜΑ}}{}
\ifthenelse{\equal{\type}{M}}
{\definecolor{maincolor}{HTML}{004e64}
\def\perigrafi{Τα διαγωνίσματα "Τύπου Μ" αφορούν την Ενισχυτική Διδασκαλία. Περιλαμβάνουν θέματα διαβαθμισμένης δυσκολίας με στόχο την σταδιακή κάλυψη βασικών κενών και την τόνωση της αυτοπεποίθησης του μαθητή.}
\def\typos{Μ - ΕΝΙΣΧΥΤΙΚΗ ΔΙΔΑΣΚΑΛΙΑ}}{}


\ifthenelse{\equal{\style}{classic}}
{
\newcommand{\titlos}[3]{
	\pagenumbering{gobble}
	% \includepdf[pages=-,pagecommand={},width=\paperwidth]{\type.pdf}
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
	\section*{{\Huge \textcolor{maincolor}{#2}}}
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

\begin{tikzpicture}[remember picture, overlay]

    % --- 1. TOP SECTION: MATH ART BACKGROUND (Placeholder for Image) ---
    % Instead of an external image, we generate a 3D wireframe plot
    \begin{scope}
        \clip (current page.north west) rectangle ([yshift=-15cm]current page.east);
        
        \node[anchor=north west, inner sep=0pt] at (current page.north west) {
            \includegraphics[width=\paperwidth, height=17cm, keepaspectratio=false]{/home/spyros/Εικόνες/wallpapers/sebastian-boring-8zD7rs8UpxU-unsplash.jpg}};
    \end{scope}


    % --- 2. MIDDLE GEOMETRY: ORANGE ACCENTS ---
    % The orange shapes that sit "behind" or flush with the dark shape

    % Orange Main Polygon
    \path[bottom color=maincolor!80!black, top color=maincolor!80, opacity=0.7] 
        ([xshift=10cm, yshift=-14cm]current page.north west) -- 
        ([xshift=22cm, yshift=-14cm]current page.north west) -- 
        ([xshift=22cm, yshift=-20cm]current page.north west) -- 
        ([xshift=17cm, yshift=-20cm]current page.north west) -- cycle;


    % --- 3. MAIN DARK SHAPE (The "Cut") ---
    % This is the complex polygon covering the bottom and left
    
    % Coordinates calculation relative to page
    % Start from bottom left, go up, cut right, dip down, go right, close loop
    \fill[corpDark] 
        (current page.south west) -- 
        (current page.south east) -- 
        ([yshift=-17cm]current page.north east) -- % Bottom point of right side
        ([xshift=-7cm, yshift=-17cm]current page.north east) -- % Flat part right
        ([xshift=-12cm, yshift=-13cm]current page.north east) -- % Diagonal UP-Left
        ([yshift=-13cm]current page.north west) -- % Top Left start of dark zone
        cycle;

    % --- 4. WHITE BORDER LINE (The Separation) ---
    % Draws the thick white line that separates the image from the dark shape
    \draw[white, line width=4pt] 
        ([yshift=-13cm]current page.north west) -- 
        ([xshift=9cm, yshift=-13cm]current page.north west) -- % Horizontal
        ([xshift=14cm, yshift=-17cm]current page.north west) -- % Diagonal Down
        ([xshift=22cm, yshift=-17cm]current page.north west);   % Horizontal to edge


    % --- 5. LOGO & YEAR ---
    
    % Fake Logo
    \node[anchor=north west] at ([xshift=1cm, yshift=-14cm]current page.north west) {
	\begin{tikzpicture}[scale=0.7]
        \fill[maincolor,yshift=-2mm](0,0) rectangle (2cm,2.4cm);
		\node (fig1) at ($(0,0)+(0.21cm,1.9cm)$)
		{\includegraphics[width=0.049\linewidth]{/home/spyros/Μαθηματικά/Φροντιστήριο ΦΙΛΟΜΑΘΕΙΑ/Βαθμοί - Φυλλάδιο ύλης - Διάφορα/Λογότυπα/logo.png}};
		\node[white] at ($(0,0)+(2.4cm,2.3cm)$) {\titlefont{\fontsize{9.3}{12}\selectfont ΦΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
		\node[white] at ($(0,0)+(2.3cm,1.7cm)$) {\titlefont{ {\fontsize{24}{33.6}\selectfont \textbf{ΦΙΛΟΜΑΘΕΙΑ}}}};
		\draw[white] (2.5,0.45)--($(2.4,0.45)+(8.5cm,0cm)$);
		\node[white] at ($(0,0)+(2.5cm,0.5cm)$) {\textcolor{white}{\fontsize{10}{12}\selectfont\faMapMarker*}\ \ Ιακώβου Πολυλά 24, Πεζόδρομος};
\end{tikzpicture}
    };


    % Year
    \node[anchor=north west, text=white, align=left] at ([xshift=1cm, yshift=-17cm]current page.north west) {
        \fontsize{28}{40}\selectfont \titlefont{\textbf{#2}}\\[1em]  \fontsize{32}{40}\selectfont \titlefont{\textcolor{maincolor}{#1}}
    };


    % --- 6. MAIN TITLE ---
    \node[anchor=north west, text=white, align=left] at ([xshift=1cm, yshift=-7cm]current page.west) {
        \fontsize{14}{16}\selectfont \titlefont{ΔΙΑΓΩΝΙΣΜΑ\ \ \textcolor{secondarycolor}{\textbf{ΤΥΠΟΥ Β}}}\\[0.8em]
        \fontsize{38}{40}\selectfont \textbf{\textcolor{maincolor}{#3}}\\[0.4em]
        \fontsize{14}{16}\selectfont \titlefont{\textcolor{white}{\textbf{ΣΧΟΛΙΚΟ ΕΤΟΣ \schoolyear}}}
    };

    % --- 7. DECORATIVE FORMULAS ---
    % Subtly placed formulas in the dark area
    \node[anchor=west, text=white, opacity=0.15] at ([xshift=14.5cm, yshift=7cm]current page.south west) {
        \fontsize{14}{36}\selectfont $i\hbar \frac{\partial}{\partial t}\Psi = \hat{H}\Psi$
    };
    
    \node[anchor=west, text=white, opacity=0.15] at ([xshift=9.7cm, yshift=8.5cm]current page.south west) {
        \fontsize{12}{40}\selectfont $\nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}$
    };
    % Group 1: Original PDF formulas (Concentrated)
    \node[text=white, opacity=0.12] at ([xshift=10.5cm, yshift=12.5cm]current page.south west) {\fontsize{12}{14}\selectfont $\displaystyle\int_{x_{0}}^{x}f(x)dx=F(x)-F(x_{0})$};
    \node[text=white, opacity=0.15] at ([xshift=6.5cm, yshift=9.5cm]current page.south west) {\fontsize{14}{16}\selectfont $\displaystyle\sum_{n=1}^{\infty}\frac{1}{n^{2}+1}=\frac{\pi^{2}}{12}$};
    \node[text=white, opacity=0.10] at ([xshift=3cm, yshift=8.5cm]current page.south west) {\fontsize{11}{13}\selectfont $\lim\limits_{t\to\infty}\ln t=\displaystyle\int_{1}^{\infty}\frac{1}{t}dt$};
    \node[text=white, opacity=0.14] at ([xshift=9.5cm, yshift=5.5cm]current page.south west) {\fontsize{13}{15}\selectfont $\displaystyle\iiint_{V}\nabla\cdot FdV=\oiint_{S}F\cdot n dS$};
    \node[text=white, opacity=0.12] at ([xshift=2.8cm, yshift=5.1cm]current page.south west) {\fontsize{12}{14}\selectfont $\displaystyle\oint_{C}f(z)dz$};
    \node[text=white, opacity=0.10] at ([xshift=16.2cm, yshift=5cm]current page.south west) {\fontsize{10}{12}\selectfont $\vec{PS}=\langle x^{2},\frac{x}{2}\rangle$};
    \node[text=white, opacity=0.13] at ([xshift=2cm, yshift=3.2cm]current page.south west) {\fontsize{13}{15}\selectfont $A=\bigcup_{n=1}^{\infty}A_{n}$};

    % Group 2: Fundamental Math & Constants (Concentrated)
    \node[text=white, opacity=0.15] at ([xshift=9.2cm, yshift=8.1cm]current page.south west) {\fontsize{14}{16}\selectfont $e^{i\pi} + 1 = 0$};
    \node[text=white, opacity=0.11] at ([xshift=5.8cm, yshift=2.5cm]current page.south west) {\fontsize{12}{14}\selectfont $f(x) = \displaystyle\sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x-a)^n$};
    \node[text=white, opacity=0.12] at ([xshift=15cm, yshift=11.8cm]current page.south west) {\fontsize{11}{13}\selectfont $V - E + F = 2$};
    \node[text=white, opacity=0.10] at ([xshift=8.1cm, yshift=1.8cm]current page.south west) {\fontsize{14}{16}\selectfont $\nabla^2 \Phi = \frac{\rho}{\epsilon_0}$};
    \node[text=white, opacity=0.12] at ([xshift=10.5cm, yshift=3.2cm]current page.south west) {\fontsize{10}{12}\selectfont $\zeta(s) = \displaystyle\sum_{n=1}^{\infty} n^{-s}$};

    % Group 3: 20 New Formulas (Concentrated area)
    \node[text=white, opacity=0.12] at ([xshift=2cm, yshift=1.8cm]current page.south west) {\fontsize{11}{13}\selectfont $E = mc^2$};
    \node[text=white, opacity=0.10] at ([xshift=18.2cm, yshift=8cm]current page.south west) {\fontsize{10}{12}\selectfont $G_{\mu\nu} + \Lambda g_{\mu\nu} = \kappa T_{\mu\nu}$};
    \node[text=white, opacity=0.13] at ([xshift=1.8cm, yshift=9.8cm]current page.south west) {\fontsize{12}{14}\selectfont $\hat{H}\Psi = E\Psi$};
    \node[text=white, opacity=0.11] at ([xshift=12.8cm, yshift=6.4cm]current page.south west) {\fontsize{13}{15}\selectfont $P(A|B) = \frac{P(B|A)P(A)}{P(B)}$};
    \node[text=white, opacity=0.14] at ([xshift=11.5cm, yshift=10cm]current page.south west) {\fontsize{12}{14}\selectfont $\sin^2{x}+\cos^2{x}=1$};
    \node[text=white, opacity=0.10] at ([xshift=11.2cm, yshift=7.3cm]current page.south west) {\fontsize{10}{12}\selectfont $S = k_B \ln W$};
    \node[text=white, opacity=0.12] at ([xshift=4.1cm, yshift=4.3cm]current page.south west) {\fontsize{13}{15}\selectfont $a^n + b^n = c^n$};
    \node[text=white, opacity=0.10] at ([xshift=9.5cm, yshift=9.4cm]current page.south west) {\fontsize{11}{13}\selectfont $R_{\mu\nu} = 0$};
    \node[text=white, opacity=0.13] at ([xshift=6.2cm, yshift=1.2cm]current page.south west) {\fontsize{14}{16}\selectfont $\mathcal{F}\{f\}(\xi) = \displaystyle\int f(x)e^{-2\pi ix\xi}dx$};
    \node[text=white, opacity=0.11] at ([xshift=11.2cm, yshift=4.1cm]current page.south west) {\fontsize{10}{12}\selectfont $\Delta x \Delta p \ge \frac{\hbar}{2}$};
    \node[text=white, opacity=0.10] at ([xshift=11.8cm, yshift=2.1cm]current page.south west) {\fontsize{12}{14}\selectfont $\Gamma(z) = \displaystyle\int_0^\infty t^{z-1}e^{-t}dt$};
    \node[text=white, opacity=0.14] at ([xshift=13.8cm, yshift=8cm]current page.south west) {\fontsize{13}{15}\selectfont $\chi = \frac{1}{2\pi}\displaystyle\int K dA$};
    \node[text=white, opacity=0.12] at ([xshift=7cm, yshift=3.9cm]current page.south west) {\fontsize{11}{13}\selectfont $pv = nRT$};
    \node[text=white, opacity=0.11] at ([xshift=14.2cm, yshift=10.8cm]current page.south west) {\fontsize{14}{16}\selectfont $\det(A-\lambda I) = 0$};
    \node[text=white, opacity=0.13] at ([xshift=18cm, yshift=5.9cm]current page.south west) {\fontsize{12}{14}\selectfont $\frac{DF}{dt} = \frac{\partial F}{\partial t} + (v \cdot \nabla)F$};
    \node[text=white, opacity=0.11] at ([xshift=12.2cm, yshift=4.6cm]current page.south west) {\fontsize{10}{12}\selectfont $\displaystyle\int e^{-x^2} dx = \sqrt{\pi}$};
    \node[text=white, opacity=0.15] at ([xshift=16.8cm, yshift=9.2cm]current page.south west) {\fontsize{11}{13}\selectfont $\mathbf{F} = q(\mathbf{E} + \mathbf{v} \times \mathbf{B})$};
    \node[text=white, opacity=0.10] at ([xshift=17.5cm, yshift=10.3cm]current page.south west) {\fontsize{14}{14}\selectfont $x = \frac{-b \pm \sqrt{\Delta}}{2a}$};
    \node[text=white, opacity=0.12] at ([xshift=12cm, yshift=1cm]current page.south west) {\fontsize{10}{12}\selectfont $A=\LEFTRIGHT{\{}{\}}{\nu+\dfrac{1}{\nu}\ ,\ \nu\in\mathbb{N}^*}$};
    \node[text=white, opacity=0.12] at ([xshift=8.8cm, yshift=11.2cm]current page.south west) {\fontsize{13}{15}\selectfont $H = -\displaystyle\sum p_i \log p_i$};



    % --- 8. FOOTER / CONTACT INFO ---
    % Vertical Yellow Bar
    \path[bottom color=maincolor!80!black, top color=secondarycolor!80] ([xshift=15cm, yshift=0cm]current page.south west) rectangle ([xshift=15.5cm, yshift=3.7cm]current page.south west);
    
    % Contact Text
    \node[anchor=south west, text=white, align=left] at ([xshift=14.75cm, yshift=.5cm]current page.south west) {
        \fontsize{9}{12}\selectfont
		\begin{tabular}{cl}
		 & \textbf{ΕΠΙΚΟΙΝΩΝΙΑ} \\[1mm]
		\faPhone* & 26610 20144\\[1mm]
		\faEnvelope & frontistirio.filomatheia@gmail.com \\[1mm]
		\faMobile* & 693 232 7283\ \ \ \faTelegram\ \faViber\\[1mm]
		\faFacebook & Φροντιστήριο Φιλομάθεια\\[1mm]
		\faInstagram & filomatheia\_kerkyra
		\end{tabular}        
    };

\end{tikzpicture}

    \newpage
	\perigrafi
	\newpage
	\pagenumbering{arabic}
	\begin{tikzpicture}[overlay,remember picture]
	\fill[maincolor]($(current page.north west)$)--($(current page.north west)+(2cm,0)$)--($(current page.north west)+(2cm,-2.4cm)$)--($(current page.north west)+(-2cm,-2.4cm)$)--cycle;
	\node (fig1) at ($(current page.north west)+(1cm,-1.2cm)$)
	{\includegraphics[width=0.07\linewidth]{logo.png}};
	\node[gray2] at ($(0,0)+(-2.4cm,1.8cm)$) {\titlefont{\fontsize{9}{16}\selectfont  ΦΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
	\node[maincolor] at ($(0,0)+(-2.4cm,1.2cm)$) {\titlefont{{\fontsize{24}{30}\selectfont \textbf{ΦΙΛΟΜΑΘΕΙΑ}}}};
	\draw[gray4] (-5.2,.7)--(.4,.7);
	\node at ($(0,0)+(-2.4cm,0.3cm)$) {\textcolor{maincolor}{\faMapMarker*} Ιακώβου Πολυλά 24, Πεζόδρομος};
	\node (title) at ($(current page.north east)+(-3.4cm,-.7cm)$){\textcolor{gray2}{ \titlefont{\fontsize{14}{33.6}\selectfont  ΔΙΑΓΩΝΙΣΜΑ ΕΝΟΤΗΤΑΣ}}};
	\node[below=of title.east,anchor=east,yshift=3mm] (mob) {\textcolor{maincolor}{\faPhone*} 26610 20144 - \textcolor{maincolor}{\faMobile*\ \faTelegram\ \faViber} 693 232 7283};
	\node[below=of mob.east,anchor=east,yshift=4mm] (fb) {\textcolor{maincolor}{\faFacebook} Φροντιστήριο Φιλομάθεια - \textcolor{maincolor}{\faInstagram}\ {\eng{front\_filomatheia}}};
	\end{tikzpicture}
	\vspace{10mm}\mbox{}\\
	\centering
	{\titlefont{{\large #1 - #2}}}\\\vspace{2mm} {\fontsize{24}{33.6}\selectfont #3}\\\vspace{4mm}{\titlefont{\today}}\\\vspace{3mm}
}
}
{}
%----ΣΤΥΛ ΑΣΚΗΣΗΣ ----------  
\newcommand{\Askhsh}[1]{\noindent\textcolor{black}{
\Large{\scfont\textsc{#1}}}\\}{}
%---------------------------
\newcommand{\lysh}{\textbf{\textcolor{maincolor}{ΛΥΣΗ}}}

\newlist{alist}{enumerate}{3}
\setlist[alist]{itemsep=0mm,label=\alph*.}
\newlist{balist}{enumerate}{3}
\setlist[balist]{itemsep=0mm,label=\bf\alph*.}
\newlist{Alist}{enumerate}{3}
\setlist[Alist]{itemsep=0mm,label=\Alph*.}
\newlist{bAlist}{enumerate}{3}
\setlist[bAlist]{itemsep=0mm,label=\bf\Alph*.}
\newlist{thema}{enumerate}{3}
\setlist[thema]{label=\bf\large{ΘΕΜΑ \textcolor{maincolor}{\Alph*}},itemsep=0mm,leftmargin=0cm,itemindent=18mm}
\newlist{erwthma}{enumerate}{3}
\setlist[erwthma]{label=\bf{\large{\textcolor{maincolor}{\Alph{themai}.\arabic*}}},itemsep=0mm,leftmargin=0.8cm}
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

% \newcommand{\titlefont}[1]{{\fontfamily{maksf}\selectfont \textbf{#1}}}
\RequirePackage[explicit]{titlesec}


\setlength{\columnsep}{5mm}
\titleformat{\paragraph}
{\large}%
{}{0em}%
{\textcolor{maincolor}{\faSquare\ \ {\titlefont{\bmath{#1}}}}}
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
\SetTblrStyle{firstfoot}{fg=maincolor}
\SetTblrOuter[mytblr]{theme=mytabletheme}
\SetTblrInner[mytblr]{
rowspec={t{7mm}},columns = {c},
width = 0.85\linewidth,
row{odd} = {bg=maincolor!50!white,fg=black,ht=8mm},
row{even} = {bg=maincolor!30!white,fg=black,ht=8mm},
hlines={white},vlines={white},
row{1} = {bg=maincolor, fg=white, font=\bfseries\fontfamily{maksf}},rowhead = 1,
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
{\textbf{\textcolor{maincolor}{\Large ΘΕΩΡΙΑ (Επιλέγετε 1 Θέμα)}}}
\end{center}}
\newcommand{\epiloghaskhseis}{
\begin{center}
{\textbf{\textcolor{maincolor}{\Large ΑΣΚΗΣΕΙΣ (Επιλέγετε 2 Θέματα)}}}
\end{center}}

\newcommand{\kaliepityxia}{\vfill
\begin{flushright}
Καλή Επιτυχία!
\end{flushright}}
\newcommand{\monades}[1]{
\hspace*{\fill}
\textbf{\textit{\textcolor{maincolor}{Μονάδες #1}}}}
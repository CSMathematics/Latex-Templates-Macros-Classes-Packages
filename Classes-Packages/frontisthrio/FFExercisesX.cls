\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FFExercises}[26/10/2024 Φροντιστήριο Φιλομάθεια]

\DeclareOption{classic}{\newcommand{\style}{classic}}
\DeclareOption{modern}{\newcommand{\style}{modern}}

\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[table]{xcolor}
\RequirePackage{sectsty,tabularray}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=1.50cm, right=1.50cm, top=2.00cm, bottom=2.00cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}

\pgfmathdeclarefunction{gauss}{2}{%
    \pgfmathparse{1/(#2*sqrt(2*pi))*exp(-((x-#1)^2)/(2*#2^2))}%
}

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

\RequirePackage{ifthen}
\ifthenelse{\equal{\style}{classic}}
{
\newcommand{\titlos}[3]{
	\begin{center}
	{\begin{figure}[h]
	\vspace{-10mm}
	\centering
	\includegraphics[width=0.4\linewidth]{Logo.jpg}
	\end{figure}}\vspace{-5mm}
	{\faIcon{map-marker-alt}} : Ιακώβου Πολυλά 24 - \ Πεζόδρομος\,\,|\,\,{\faIcon{phone-alt}} : 26610 20144\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283 - 6955058444\\
	\rule{14.7cm}{.1mm}\\
	\vspace{2mm}
	ΑΣΚΗΣΕΙΣ - ΠΡΟΒΛΗΜΑΤΑ\\
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
    \begin{scope}
        \clip (current page.north west) rectangle ([yshift=-15cm]current page.east);
        \node[anchor=north west, inner sep=0pt] at (current page.north west) {
            \includegraphics[width=\paperwidth, height=17cm, keepaspectratio=false]{/home/spyros/Εικόνες/wallpapers/sebastian-boring-8zD7rs8UpxU-unsplash.jpg}};
    \end{scope}
        % --- 2. MIDDLE GEOMETRY: ORANGE ACCENTS ---
        % Orange Main Polygon
    \path[right color=maincolor!55!black, left color=maincolor] 
        ([xshift=10cm, yshift=-14cm]current page.north west) -- 
        ([xshift=22cm, yshift=-14cm]current page.north west) -- 
        ([xshift=22cm, yshift=-17cm]current page.north west) -- 
        ([xshift=13.7cm, yshift=-17cm]current page.north west) -- cycle;

    \node[anchor=south, inner sep=0pt] at (current page.south){
    \includesvg[width=\paperwidth, height=\paperheight]{/home/spyros/cover.svg}
    };


    % --- 5. LOGO & YEAR ---
    % Fake Logo
    \node[anchor=north west] at ([xshift=1cm, yshift=-14cm]current page.north west) {
	\begin{tikzpicture}[scale=0.7]
        \fill[maincolor,yshift=-2mm](0,0) rectangle (2cm,2.4cm);
		\node (fig1) at ($(0,0)+(0.21cm,1.9cm)$)
		{\includegraphics[width=0.049\linewidth]{/home/spyros/Μαθηματικά/Φροντιστήριο ΦΙΛΟΜΑΘΕΙΑ/Βαθμοί - Φυλλάδιο ύλης - Διάφορα/Λογότυπα/logo.png}};
		\node[white] at ($(0,0)+(2.4cm,2.3cm)$) {\titlefont{\fontsize{10}{12}\selectfont ΦΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
		\node[white] at ($(0,0)+(2.3cm,1.7cm)$) {\titlefont{ {\fontsize{26}{33.6}\selectfont \textbf{ΦΙΛΟΜΑΘΕΙΑ}}}};
		\draw[white] (2.5,0.45)--($(2.4,0.45)+(7.7cm,0cm)$);
		\node[white] at ($(0,0)+(2.5cm,0.5cm)$) {\textcolor{white}{\fontsize{10}{12}\selectfont\faMapMarker*\ \ Ιακώβου Πολυλά 24, Πεζόδρομος}};
    \end{tikzpicture}
    };

    % Year
    \node[anchor=north west, text=white, align=left] at ([xshift=1cm, yshift=-17cm]current page.north west) {
        \fontsize{28}{40}\selectfont \titlefont{\textbf{#2}}\\[1mm]  \fontsize{32}{40}\selectfont \titlefont{\textcolor{maincolor}{#1}}
    };

    % --- 6. MAIN TITLE ---
    \node[anchor=north west, text=white, align=left] at ([xshift=1cm, yshift=-7cm]current page.west) {
        \fontsize{14}{16}\selectfont \titlefont{ΦΥΛΛΑΔΙΟ \textcolor{secondarycolor}{ΑΣΚΗΣΕΩΝ}}\\[0.8em]
        \fontsize{38}{40}\selectfont \textbf{\textcolor{maincolor}{#3}}\\[0.4em]
        \fontsize{14}{16}\selectfont {\titlefont{\textcolor{white}{\textbf{ΣΧΟΛΙΚΟ ΕΤΟΣ \schoolyear}}}}
    };

    % --- 8. FOOTER / CONTACT INFO ---
    % Vertical Yellow Bar
    \path[bottom color=maincolor!80!black, top color=secondarycolor!80] ([xshift=15cm, yshift=0cm]current page.south west) rectangle ([xshift=15.5cm, yshift=3.7cm]current page.south west);
    
    % Contact Text
    \node[anchor=south west, text=white, align=left] at ([xshift=14.75cm, yshift=.5cm]current page.south west) {
        \fontsize{9}{12}\selectfont
		\begin{tabular}{cl}
		 & \textbf{ΕΠΙΚΟΙΝΩΝΙΑ} \\[1mm]
		\faPhone* & 26610 20144\\[1mm]
		\faEnvelope & {frontistirio.filomatheia@gmail.com} \\[1mm]
		\faMobile* & 693 232 7283\ \ \ \faTelegram\ \faViber\\[1mm]
		\faFacebook & Φροντιστήριο Φιλομάθεια\\[1mm]
		\faInstagram & {filomatheia\_kerkyra}
		\end{tabular}        
    };
\end{tikzpicture}
\newpage
\mbox{}
	\newpage
	\pagenumbering{arabic}
	\twocolumn[{
		\begin{tikzpicture}[overlay,remember picture]
	\fill[maincolor]($(current page.north west)$)--($(current page.north west)+(2cm,0)$)--($(current page.north west)+(2cm,-2.4cm)$)--($(current page.north west)+(-2cm,-2.4cm)$)--cycle;
	\node (fig1) at ($(current page.north west)+(1cm,-1.2cm)$)
	{\includegraphics[width=0.07\linewidth]{logo.png}};
	\node[gray2] at ($(0,0)+(-2.4cm,1.5cm)$) {\titlefont{\fontsize{9}{16}\selectfont ΦΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
	\node[maincolor] at ($(0,0)+(-2.4cm,0.9cm)$) {\titlefont{{\fontsize{24}{30}\selectfont \textbf{ΦΙΛΟΜΑΘΕΙΑ}}}};
	\draw[gray4] (-5.2,.4)--(.4,.4);
	\node at ($(0,0)+(-2.4cm,0cm)$) {\textcolor{maincolor}{\faMapMarker*} Ιακώβου Πολυλά 24, Πεζόδρομος};
	\node (title) at ($(current page.north east)+(-3.4cm,-.7cm)$){\textcolor{gray2}{ \titlefont{\fontsize{14}{33.6}\selectfont ΦΥΛΛΑΔΙΟ ΑΣΚΗΣΕΩΝ}}};
	\node[below=of title.east,anchor=east,yshift=3mm] (mob) {\textcolor{maincolor}{\faPhone*} 26610 20144 - \textcolor{maincolor}{\faMobile*\ \faTelegram\ \faViber} 693 232 7283};
	\node[below=of mob.east,anchor=east,yshift=4mm] (fb) {\textcolor{maincolor}{\faFacebook} Φροντιστήριο Φιλομάθεια - \textcolor{maincolor}{\faInstagram}\ {front\_filomatheia}};
	\end{tikzpicture}
	\vspace{10mm}\mbox{}\\
	\centering
	{\titlefont{{\large #1 - #2}}}\\\vspace{2mm} {\fontsize{24}{33.6}\selectfont #3}\\\vspace{4mm}{\titlefont{\today}}\\\vspace{3mm}
	}]
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
\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\textcolor{maincolor}{\roman*.}}


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

\newcommand{\thewria}{
\begin{center}
{\textbf{\textcolor{maincolor}{\Large ΘΕΩΡΙΑ - ΕΡΩΤΗΣΕΙΣ ΚΑΤΑΝΟΗΣΗΣ}}}
\end{center}}
\newcommand{\askhseis}{
\begin{center}
{\textbf{\textcolor{maincolor}{\Large ΑΣΚΗΣΕΙΣ - ΠΡΟΒΛΗΜΑΤΑ}}}
\end{center}}
\setlist[enumerate]{label=\bf\textcolor{maincolor}{\large \arabic*.}}
\newcommand{\twocolkentro}[1]{
\twocolumn[
\begin{@twocolumnfalse}
#1
\end{@twocolumnfalse}]}

% \newcommand{\titlefont}[1]{{\fontfamily{maksf}\selectfont \textbf{#1}}}

\newcounter{askhsh}
\setcounter{askhsh}{1}
\newcommand{\askhsh}{{\large\theaskhsh.}\ \addtocounter{askhsh}{1}}
\RequirePackage[explicit]{titlesec}
%\titleformat{\section}{\Large}{\titlefont{\thesection}}{10pt}{\Large\titlefont{#1}}

\setlength{\columnsep}{5mm}
\titleformat{\paragraph}
{\large}%
{}{0em}%
{\textcolor{maincolor}{\faSquare\ \ \titlefont{\bmath{#1}}}}
\setlength{\parindent}{0pt}
\titlespacing{\paragraph}{0mm}{2mm}{2mm}

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
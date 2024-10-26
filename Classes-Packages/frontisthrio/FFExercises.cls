\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{frontisthrio-ask}[26/10/2024 Φροντιστήριο Φιλομάθεια]

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
	\section*{{\Huge \textcolor{xrwma}{#2}}}
	\vspace{-1mm}
	{\Large\bf{\MakeUppercase{#3}}}
	\end{center}
	\vspace{1cm}
}
}{}

\ifthenelse{\equal{\style}{modern}}
{
\newcommand{\titlos}[3]{
	\twocolumn[{
		\begin{tikzpicture}[overlay,remember picture]
		\fill[xrwma]($(current page.north west)$)--($(current page.north west)+(2cm,0)$)--($(current page.north west)+(2cm,-2.4cm)$)--($(current page.north west)+(-2cm,-2.4cm)$)--cycle;
		\node (fig1) at ($(current page.north west)+(1cm,-1.2cm)$)
		{\includegraphics[width=0.07\linewidth]{logo.png}};
		\node[gray2] at ($(0,0)+(-2.4cm,1.5cm)$) {\kerkissans{Φ\,ΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
		\node[xrwma] at ($(0,0)+(-2.4cm,.9cm)$) {\kerkissans{\huge {\fontsize{28}{33.6}\selectfont Φ\,ΙΛΟΜΑΘΕΙΑ}}};
		\draw[gray4] (-5.2,.4)--(.4,.4);
		\node at ($(0,0)+(-2.4cm,0cm)$) {\textcolor{xrwma}{\faMapMarker*} Ιακώβου Πολυλά 24, Πεζόδρομος};
		\node (title) at ($(current page.north east)+(-3.5cm,-.7cm)$){\textcolor{gray2}{ \kerkissans{\LARGE Φ\,ΥΛΛΑΔΙΟ ΑΣΚΗΣΕΩΝ}}};
		\node[below=of title.east,anchor=east,yshift=3mm] (mob) {\textcolor{xrwma}{\faPhone*} 26610 20144 - \textcolor{xrwma}{\faMobile*\ \faTelegram\ \faViber} 693 232 7283};
		\node[below=of mob.east,anchor=east,yshift=4mm] (fb) {\textcolor{xrwma}{\faFacebook} Φροντιστήριο Φιλομάθεια - \textcolor{xrwma}{\faInstagram}\ {\eng{front\_filomatheia}}};
		\end{tikzpicture}
		\vspace{10mm}\mbox{}\\
		\centering
		\kerkissans{{\huge #1 - #2}\\\vspace{2mm} {\LARGE #3}}\\\vspace{4mm}{\kerkissans{\today}}\\\vspace{3mm}
	}]
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
\newlist{rlist}{enumerate}{3}
\setlist[rlist]{itemsep=0mm,label=\textcolor{xrwma}{\roman*.}}


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
{\textbf{\textcolor{xrwma}{\Large ΘΕΩΡΙΑ - ΕΡΩΤΗΣΕΙΣ ΚΑΤΑΝΟΗΣΗΣ}}}
\end{center}}
\newcommand{\askhseis}{
\begin{center}
{\textbf{\textcolor{xrwma}{\Large ΑΣΚΗΣΕΙΣ - ΠΡΟΒΛΗΜΑΤΑ}}}
\end{center}}
\setlist[enumerate]{label=\bf\textcolor{xrwma}{\large \arabic*.}}
\newcommand{\twocolkentro}[1]{
\twocolumn[
\begin{@twocolumnfalse}
#1
\end{@twocolumnfalse}]}

\newcommand{\kerkissans}[1]{{\fontfamily{maksf}\selectfont \textbf{#1}}}

\newcounter{askhsh}
\setcounter{askhsh}{1}
\newcommand{\askhsh}{{\large\theaskhsh.}\ \addtocounter{askhsh}{1}}
\RequirePackage[explicit]{titlesec}
%\titleformat{\section}{\Large}{\kerkissans{\thesection}}{10pt}{\Large\kerkissans{#1}}

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
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MWExercises}[22/11/2024 MathWorld.gr]

\DeclareOption{classic}{\newcommand{\style}{classic}}
\DeclareOption{modern}{\newcommand{\style}{modern}}
\DeclareOption{scientific}{\newcommand{\style}{scientific}}

\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[table]{xcolor}
\RequirePackage[left=1.5cm, right=1.50cm, top=2.00cm, bottom=2.00cm]{geometry}
\RequirePackage{sectsty,tabularray}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem,iftex,fancyhdr,fontawesome5,graphicx,multicol,multirow,enumitem,tabularx,gensymb,venndiagram,longtable,tkz-euclide,eurosym,tcolorbox,tabularray,tikzpagenodes,relsize}
\usetikzlibrary{calc}
\usetikzlibrary{positioning}
\tcbuselibrary{skins,theorems,breakable}

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
	{\faGlobeEurope} : \eng{mathworld.gr}\,\,|\,\,{\faEnvelope} : \eng{info@mathworld.gr}\,\,|\,\, {\faIcon{mobile-alt}} : 6932327283\\
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
}
{}

\ifthenelse{\equal{\style}{modern}}
{
\newcommand{\titlos}[3]{
	\twocolumn[{
		\begin{tikzpicture}[overlay,remember picture]
		\fill[xrwma]($(current page.north west)$)--($(current page.north west)+(2.4cm,0)$)--($(current page.north west)+(2.4cm,-2.4cm)$)--($(current page.north west)+(0cm,-2.4cm)$)--cycle;
		\node (fig1) at ($(current page.north west)+(1.2cm,-1.2cm)$)
		{\includegraphics[width=0.07\linewidth]{logo.png}};
		\node[gray2] at ($(0,0)+(-2.4cm,1.5cm)$) {\titlefont{Ο κόσμος των μαθηματικών}};
		\node[xrwma] at ($(0,0)+(-2.4cm,.9cm)$) {\titlefont{\huge {\fontsize{25}{28.8}\selectfont \eng{MathWorld.gr}}}};
		\draw[gray4] (-4.7,.4)--(0,.4);
		\node at ($(0,0)+(-2.4cm,0cm)$) {\textcolor{xrwma}{\faGlobeEurope} .....};
		\node (title) at ($(current page.north east)+(-3.5cm,-.7cm)$){\textcolor{gray2}{ \titlefont{\LARGE ΦΥΛΛΑΔΙΟ ΑΣΚΗΣΕΩΝ}}};
		\node[below=of title.east,anchor=east,yshift=3mm] (mob) {\textcolor{xrwma}{\faEnvelope} {\eng{info@mathworld.gr}} - \textcolor{xrwma}{\faMobile*\ \faTelegram\ \faViber} 693 232 7283};
		\node[below=of mob.east,anchor=east,yshift=4mm] (fb) {\textcolor{xrwma}{\faFacebook} {\eng{MathWorld}} - \textcolor{xrwma}{\faInstagram}\ {\eng{math\_worldgr}}};
		\end{tikzpicture}
		\vspace{10mm}\mbox{}\\
		\centering
		\titlefont{{\huge #1 - #2}\\\vspace{2mm} {\LARGE #3}}\\\vspace{4mm}{\titlefont{\today}}\\\vspace{3mm}
	}]
}
}
{}

\ifthenelse{\equal{\style}{scientific}}
{
\fancypagestyle{firstpage}{% define a custom header
  \fancyhf{}
\renewcommand{\headrulewidth}{0pt}
  \fancyfoot[CO]{
\begin{tikzpicture}[overlay, remember picture]%
\fill[xrwma] ($(current page.south)+(-1.2,0)$) -- ($(current page.south)+(-0.7,0.5)$)
-- ($(current page.south)+(0.7,0.5)$)-- ($(current page.south)+(1.2,0)$)--cycle;
\node[anchor=south, text=white] at (current page.south) {\thepage};
\fill[xrwma] (current page.south west) rectangle ($(current page.south west)+(0.7,1.2)$);
\fill[xrwma] (current page.south east) rectangle ($(current page.south east)+(-0.7,1.2)$);
\node[color=white] at ($(current page.south west)+(0.35,0.85)$) {\faMobile*};
\node[color=white] at ($(current page.south west)+(0.35,0.35)$) {\faEnvelope[regular]};
\node[color=white] at ($(current page.south east)+(-0.35,0.85)$) {\faInstagram};
\node[color=white] at ($(current page.south east)+(-0.35,0.35)$) {\faFacebook};

\node[anchor=west] at ($(current page.south west)+(0.85,0.85)$) {26610 20144 - 693 232 7283};
\node[anchor=west] at ($(current page.south west)+(0.85,0.35)$) {{\eng{frontistirio.filomatheia@gmai.com}}};
\node[anchor=east] at ($(current page.south east)+(-0.85,0.85)$) {{\eng{front\_filomatheia}}};
\node[anchor=east] at ($(current page.south east)+(-0.85,0.35)$) {Φροντιστήριο Φιλομάθεια};
\end{tikzpicture}
}
}

\renewcommand{\headrulewidth}{1pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{m}


\fancyfoot[CO]{
\begin{tikzpicture}[overlay, remember picture]%
\fill[xrwma] ($(current page.south)+(-1.2,0)$) -- ($(current page.south)+(-0.7,0.5)$)
-- ($(current page.south)+(0.7,0.5)$)-- ($(current page.south)+(1.2,0)$)--cycle;
\node[anchor=south, text=white] at (current page.south) {\thepage};
\fill[xrwma] (current page.south west) rectangle ($(current page.south west)+(0.7,1.2)$);
\fill[xrwma] (current page.south east) rectangle ($(current page.south east)+(-0.7,1.2)$);
\node[color=white] at ($(current page.south west)+(0.35,0.85)$) {\faMobile*};
\node[color=white] at ($(current page.south west)+(0.35,0.35)$) {\faEnvelope[regular]};
\node[color=white] at ($(current page.south east)+(-0.35,0.85)$) {\faInstagram};
\node[color=white] at ($(current page.south east)+(-0.35,0.35)$) {\faFacebook};

\node[anchor=west] at ($(current page.south west)+(0.85,0.85)$) {26610 20144 - 693 232 7283};
\node[anchor=west] at ($(current page.south west)+(0.85,0.35)$) {{\eng{frontistirio.filomatheia@gmail.com}}};
\node[anchor=east] at ($(current page.south east)+(-0.85,0.85)$) {{\eng{front\_filomatheia}}};
\node[anchor=east] at ($(current page.south east)+(-0.85,0.35)$) {Φροντιστήριο Φιλομάθεια};
\end{tikzpicture}
}
\newcommand{\titlos}[3]{
\twocolumn[{%
	\begin{tikzpicture}[overlay,remember picture]
	\tikzset{
		bigrect/.style = {rectangle, minimum width=3mm,minimum height=3mm, fill=xrwma, opacity=0.4},
		rect/.style = {rectangle, minimum width=2mm,minimum height=2mm, fill=xrwma, opacity=0.4},
		smallrect/.style = {scale=0.7,rectangle, minimum width=1mm,minimum height=1mm, fill=xrwma, opacity=0.4}
	}
	%-------- Logo - Layout ---------------
	\fill[xrwma,rounded corners=2pt,yshift=7mm] (30:0.75) -- (0,0) -- (270:0.75) -- (330:0.75)--cycle;
	\fill[xrwma!85!black,rounded corners=2pt,yshift=7mm] (30:0.75) -- (90:0.75) -- (150:0.75) -- (0,0)--cycle;
	\fill[xrwma!70!black,rounded corners=2pt,yshift=7mm] (150:0.75) -- (210:0.75) -- (270:0.75) -- (0,0)--cycle;
	\draw[line width=.5mm,white,yshift=7mm] (0,0) -- (270:0.75);
	\draw[line width=.5mm,white,yshift=7mm] (0,0) -- (30:0.75);
	\draw[line width=.5mm,white,yshift=7mm] (0,0) -- (150:0.75);
	\node at ($(current page.north west)+(4.3,-1.3)$) {\titlefont{\fontsize{21}{24}\selectfont \textcolor{xrwma}{Φιλομάθεια}}};
	\node at ($(current page.north west)+(4.3,-0.8)$) {\footnotesize\fontsize{0.75em}{0.98em} \titlefont{ΦΡΟΝΤΙΣΤΗΡΙΟ ΜΕΣΗΣ ΕΚΠΑΙΔΕΥΣΗΣ}};
	\node at ($(current page.north west)+(4.3,-1.8)$) {\footnotesize\fontsize{0.85em}{0.98em}\selectfont \textcolor{xrwma}{\faMapMarker*} Ιακώβου Πολυλά 24 - Πεζόδρομος};
	\fill[xrwma!35!black] ($(current page.north west)+(9.2,-2.5)$)--($(current page.north west)+(0,-2.5)$)--($(current page.north west)+(0,-2.8)$)--($(current page.north west)+(8.6,-2.8)$)--cycle;
	\path[step=0.5,right color=xrwma,left color=white] ($(current page.north east)$) grid ($(current page.north east)+(-8.4,-2.7)$);
	\path[step=0.1,opacity=1,right color=xrwma,left color=white,thin] ($(current page.north east)$) grid ($(current page.north east)+(-8.4,-2.7)$);
	%------------ Title ------------------
	\node[anchor=west] at($(current page.north west)+(1,-3.8)$) {\textcolor{xrwma}{\LARGE \titlefont{#1}}};
	\node[anchor=west] at($(current page.north west)+(1,-4.3)$) {\textcolor{darkxrwma2}{\Large \titlefont{#2}}};
	
	\node[anchor=east] at($(current page.north east)+(-1,-3.8)$){\titlefont{#3}};
	\node[anchor=east] at($(current page.north east)+(-1,-4.3)$) {\titlefont{\small{Φυλλάδιο Ασκήσεων}}};
	%---------- Squares ----------------
	\begin{scope}[yshift=-4mm]
	\node[bigrect] at ($(current page.north east)+(-4,-1.7)$){};
	\node[bigrect] at ($(current page.north east)+(-4.5,-1.4)$){};
	\node[bigrect] at ($(current page.north east)+(-4.6,-0.3)$){};
	\node[bigrect] at ($(current page.north east)+(-5.8,-1.6)$){};
	\node[bigrect] at ($(current page.north east)+(-5.4,-0.7)$){};
	\node[bigrect] at ($(current page.north east)+(-5.4,-1.25)$){};
	\node[bigrect] at ($(current page.north east)+(-5,-1.1)$){};
	\node[rect] at ($(current page.north east)+(-6.9,-0.9)$){};
	\node[rect,scale=0.8] at ($(current page.north east)+(-6.9,-0.5)$){};
	\node[rect] at ($(current page.north east)+(-6.12,-0.75)$){};
	\node[rect] at ($(current page.north east)+(-6.4,-1.2)$){};
	\node[rect,scale=0.8] at ($(current page.north east)+(-7.4,-0.7)$){};
	\node[rect] at ($(current page.north east)+(-4.3,-0.9)$){};
	\node[rect] at ($(current page.north east)+(-2.6,-0.77)$){};
	\node[rect] at ($(current page.north east)+(-3.1,-1.7)$){};
	\node[smallrect] at ($(current page.north east)+(-5.8,-1)$){};
	\node[smallrect,scale=0.8] at ($(current page.north east)+(-8.1,-0.83)$){};
	\node[smallrect] at ($(current page.north east)+(-8.6,-1)$){};
	\node[smallrect] at ($(current page.north east)+(-7.8,-0.98)$){};
	\node[smallrect,scale=0.7] at ($(current page.north east)+(-8.1,-1.2)$){};
	\node[smallrect] at ($(current page.north east)+(-6.6,-1.6)$){};
	\node[smallrect] at ($(current page.north east)+(-7.5,-1.4)$){};
	\node[smallrect] at ($(current page.north east)+(-7.2,-1.2)$){};
	\node[smallrect] at ($(current page.north east)+(-6.9,-1.4)$){};
	\node[smallrect,scale=0.8] at ($(current page.north east)+(-6.6,-0.7)$){};
	\node[smallrect] at ($(current page.north east)+(-6.1,-1.4)$){};
	\node[smallrect] at ($(current page.north east)+(-4.5,-2)$){};
	\end{scope}
	%------------- Formulas ------------------------
	\node at ($(current page.north east)+(-1.4,-0.7)$){\color{darkxrwma2}{$\displaystyle\int_{0}^{\infty}{\!\!\!f(x)\mathrm{d}x}$}};
	\node at ($(current page.north east)+(-4.4,-.85)$){\color{darkxrwma2}{$\displaystyle\iiint_{D}{\nabla\cdot \mathbold{F}\mathrm{d}V}$}};
	\node at ($(current page.north east)+(-4.1,-2.3)$){{\tiny \color{darkxrwma1}{$\displaystyle\diffp[n,m]{f(x,y)}{x,y}$}}};
	\node at ($(current page.north east)+(-5.4,-1.8)$){{\scriptsize \color{xrwma}{$\displaystyle\lim_{x\to x_0}{f(x)}$}}};
	\node at ($(current page.north east)+(-3.5,-1.5)$){{\small \color{darkxrwma2}{$\displaystyle\sum_{n=1}^{\infty}{\frac{1}{n^2}}=\frac{\pi^2}{6}$}}};
	\node at ($(current page.north east)+(-1.5,-2.2)$){\color{darkxrwma2}{$\displaystyle\liminf_{n\to\infty}{a_n}=l$}};
	\node at ($(current page.north east)+(-1.4,-1.5)$){\color{darkxrwma2}{$\displaystyle u_t=\kappa\nabla^2u$}};
	\node at ($(current page.north east)+(-2,-1)$){{\footnotesize \color{xrwma}{$\displaystyle x^2y''+xy'+y=p(x)$}}};
	\node at ($(current page.north east)+(-3,-.4)$){{\tiny \color{xrwma}{$\displaystyle F(k)=\int_{-\infty}^{\infty}{f(x)e^{-2\pi ikx}\mathrm{d}x}$}}};
	%--------------- Right rule --------------------
	\fill[xrwma] ($(current page.north east)+(-8.6,-2.5)$)--($(current page.north east)+(0,-2.5)$)--($(current page.north east)+(0,-2.8)$)--($(current page.north east)+(-9.2,-2.8)$)--cycle;
	\node at ($(current page.north)+(0,-5)$){\titlefont{\Large{\textcolor{darkxrwma2}{#3}}}};
	\end{tikzpicture}\vspace{3.7cm}
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


\newcounter{askhsh}
\setcounter{askhsh}{1}
\newcommand{\askhsh}{{\large\theaskhsh.}\ \addtocounter{askhsh}{1}}
\RequirePackage[explicit]{titlesec}
%\titleformat{\section}{\Large}{\titlefont{\thesection}}{10pt}{\Large\titlefont{#1}}

\setlength{\columnsep}{5mm}
\titleformat{\paragraph}
{\large}%
{}{0em}%
{\textcolor{xrwma}{\faSquare\ \ \titlefont{\bmath{#1}}}}
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
row{odd} = {bg=black!10!white,fg=black,ht=8mm},
row{even} = {bg=white,fg=black,ht=8mm},
hlines={white},vlines={white},
row{1} = {bg=xrwma, fg=white, font=\large\bfseries\titlefont},rowhead = 1,
hline{2} = {.7mm}, % midrule  
}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathroloi}[16/9/2015 Thewria mathimatos]

\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}
\RequirePackage[usenames,dvipsnames,rgb,table]{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage{sectsty}
\RequirePackage{tikz,tkz-euclide}
\RequirePackage{enumitem}
\RequirePackage[left=2.00cm, right=2.00cm, top=2.00cm, bottom=3.00cm]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\sectionfont{\centering}
\def\xroma#1{\def\@xroma{#1}}
\RequirePackage{ifthen}




\newcommand\mathroloi[9]{%
    \def\a{#1}%
    \def\b{#2}%
    \def\c{#3}%
    \def\d{#4}%
    \def\e{#5}%
    \def\f{#6}%
    \def\g{#7}%
    \def\h{#8}%
    \def\i{#9}%
    \mathroloicontinued
}

\newcommand{\mathroloicontinued}[7]{
\begin{scope}
\clip (0,0) circle (#4);
\draw[opacity=.1,step=.5] (-#4,-#4) grid (#4,#4);
\draw[opacity=.2,step=2] (-#4,-#4) grid (#4,#4);
\end{scope}
\draw[line width=.7mm] (0,0) circle (#4);
\foreach \s/\t in 
{0/\c, % Ώρα 3
30/\b, % Ώρα 2
60/\a, % Ώρα 1
90/#3, % Ώρα 12
120/#2, % Ώρα 11
150/#1, % Ώρα 10
180/\i, % Ώρα 9
210/\h, % Ώρα 8
240/\g, % Ώρα 7
270/\f, % Ώρα 6
300/\e, % Ώρα 5
330/\d % Ώρα 4
}
{\node at (\s:#7){\LARGE\t};
}
\foreach \a in {0,30,60,...,330}{
\draw[line cap=round,line width=.8mm] (\a:#4-.5)--(\a:#4);
}
\foreach \a in {0,6,12,...,354}{
\draw[line cap=round,line width=.3mm] (\a:#4-.3)--(\a:#4);
}
\path[decoration={reverse path=true,text along path, text={ #6}, text align={align=center}, raise=.5ex},decorate,rotate=270] (0,0)circle(#5);
\draw (0,0) circle (#4-.3);
\draw[fill=black] (0,0) circle (.2);
}
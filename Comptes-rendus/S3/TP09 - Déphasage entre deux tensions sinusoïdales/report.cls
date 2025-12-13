\ProvidesClass{report}
\usepackage{pdflscape}
\usepackage{float}
\LoadClass[a4paper,12pt]{article}

\usepackage[francais]{babel} 
\usepackage{caption}
\frenchbsetup{StandardLists=true} 
\usepackage[T1]{fontenc}   
\usepackage[utf8]{inputenc} 
\usepackage{subfiles}
\usepackage{titling}
\usepackage{textcomp}
\usepackage{lmodern}        
\usepackage{graphicx}       
\usepackage{amsmath}        
\usepackage[headheight=61pt]{geometry}      
\usepackage{multicol}		
\usepackage{multirow}    
\usepackage{mathtools}  
\usepackage{amssymb}   
\usepackage{float}      
\usepackage{xspace}        
\usepackage{todonotes}
\usepackage{xcolor}
\usepackage{enumitem}
\usepackage{tikz}		
\usetikzlibrary{calc}		
\usepackage[cache=false]{minted}       
\geometry{vmargin=3cm, textwidth=16cm} 
\usepackage{fancyhdr}	
\pagestyle{fancy}		
\PassOptionsToPackage{hyphens}{url}\usepackage[pagebackref]{hyperref}	
\usepackage[final]{pdfpages} 
\usepackage[linesnumbered,ruled,vlined]{algorithm2e} 
\usepackage{ulem} 

\newif\if@monochrome\@monochromefalse
\DeclareOption{monochrome}{
	\@monochrometrue
}
\ProcessOptions\relax

\renewcommand{\listoflistingscaption}{Liste des programmes} 
\renewcommand{\listingscaption}{Programme}

\newcommand{\UV}[1]{\def\theUV{#1}} 

\if@monochrome
\definecolor{jaune}{RGB}{0,0,0} 
\else
\renewcommand{\labelitemi}{\color{jaune}$\bullet$} 
\renewcommand{\labelitemii}{\color{gris}$\bullet$}

\makeatletter

\newcommand\sectionuline{
	\bgroup\markoverwith{\textcolor{jaune}{\rule[-0.5ex]{0.1mm}{0.5mm}}}
	\ULon
}
\renewcommand\section{\@startsection {section}{1}{\z@}
	{-3.5ex \@plus -1ex \@minus -.2ex}
	{2.3ex \@plus .2ex}
	{\normalfont\LARGE\bfseries\sectionuline}
}
\renewcommand\subsection{\@startsection {subsection}{2}{1em}
	{-3ex \@plus -0.8ex \@minus -.2ex}
	{1.8ex \@plus .2ex}
	{\normalfont\Large\bfseries\color{gris}}
}

\renewcommand\subsubsection{\@startsection {subsubsection}{3}{2em}
	{-2.5ex \@plus -0.6ex \@minus -.2ex}
	{1.8ex \@plus .2ex}
	{\normalfont\large\bfseries\color{gris}}
}

\renewcommand\paragraph{\@startsection {paragraph}{4}{3em}
	{-2ex \@plus -0.4ex \@minus -.2ex}
	{1.3ex \@plus .2ex}
	{\normalfont\large\bfseries\color{grisClair}}
}

\renewcommand\subparagraph{\@startsection {subparagraph}{5}{4em}
	{-1.5ex \@plus -0.2ex \@minus -.2ex}
	{.8ex \@plus .2ex}
	{\normalfont\bfseries\color{grisClair}}
}

\makeatother
\fi

\renewcommand{\headrulewidth}{0.5pt} 
\renewcommand{\footrulewidth}{1.5pt}
\renewcommand{\footrule}{
	{\color{jaune} \hrule width\headwidth height\footrulewidth \vskip+2mm}
} 
\lhead{\textsc{\leftmark }}
\rhead{\theUV}
\cfoot{\thepage} 
\lfoot{\theauthor} 

\newenvironment{myabstract}{
	\begin{quote} \begin{center}
		\bf}
		{\end{center} \end{quote}}

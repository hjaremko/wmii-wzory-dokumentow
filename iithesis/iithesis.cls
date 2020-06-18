\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iithesis}[2020/04/27 v0.0.1 Thesis template]

\newcommand{\@baseclass}{article}

% Locale
\newcommand{\@lang}{english} % Default to English
\DeclareOption{bsc}{\newcommand{\thesisType}{Bachelor's thesis~}}
\DeclareOption{msc}{\renewcommand{\thesisType}{Master's thesis~}}

\DeclareOption{polski}{
    \renewcommand{\@lang}{polish}
    \@setlang@polish
}

\newcommand{\university}{%
    Jagiellonian University
}

\newcommand{\institute}{%
    Institute of Computer Science and~Computational Mathematics
}

\newcommand{\@studentNumberText}{%
    Student number:
}

\newcommand{\@adviserText}{%
    Thesis supervisor:
}

\newcommand{\@setlang@polish}{%
    \DeclareOption{bsc}{\renewcommand{\thesisType}{Praca licencjacka~}}
    \DeclareOption{msc}{\renewcommand{\thesisType}{Praca magisterska~}}

    \renewcommand{\university}{%
        Uniwersytet Jagielloński
    }

    \renewcommand{\institute}{%
        Instytut Informatyki i Matetmatyki Komputerowej
    }

    \renewcommand{\@studentNumberText}{%
        Numer indeksu:
    }

    \renewcommand{\@adviserText}{%
        Promotor pracy:
    }
}


% Base class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{a4paper, oneside, openright, 11pt}{\@baseclass}
\ProcessOptions\relax

\LoadClass{\@baseclass}

% Common packages
\RequirePackage[\@lang]{babel}
%\RequirePackage{indentfirst}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[hidelinks]{hyperref} %[hidelinks] hides ugly boxes
\RequirePackage{microtype}
\RequirePackage[nottoc, notlof, notlot]{tocbibind}
\RequirePackage{listings}
\RequirePackage{graphicx}

\brokenpenalty=1000
\clubpenalty=1000
\widowpenalty=1000

\lstset{frame=single,
aboveskip=4mm,
belowskip=4mm,
showstringspaces=false,
columns=flexible,
basicstyle={\small\ttfamily},
numbers=none,
breaklines=true,
breakatwhitespace=true,
tabsize=3
}

% Not sure what it does
%\renewcommand\refname{Bibliography}
%\patchcmd{\thebibliography}{\section*}{\section}{}{}

% Student number seems to be present on other theses
\newcommand{\authorNumber}[1]{
    \newcommand{\@authorNumber}{{\small \@studentNumberText#1}}
}

\newcommand{\thesisAuthor}[2]{%
    #1\\
    #2 % Will not show up if not provided
}

\newcommand{\adviser}[1]{
    \newcommand{\@adviser}{#1}
}

\renewcommand{\maketitle}{%
    \begin{titlepage}
        \newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
        \center
        \includegraphics[width=0.1\textwidth]{uj.jpg}\\[0.5cm]
        \textbf{\LARGE \university}\\[0.2cm]
        \textsc{\institute}\\[3cm]

        \textsc{\large \thesisType}\\[0.1cm]

        \HRule\\[0.8cm]
        {\huge\bfseries \@title}\\[0.4cm]
        \HRule\\[1.0cm]

        \Large
        \thesisAuthor{\@author}{\@authorNumber}\\

        \vfill
        \begin{flushright}
            \large
            \@adviserText\\\@adviser
        \end{flushright}

        \bigskip
        \begin{center}
            \footnotesize
            Opracowano zgodnie z Ustawą o prawie autorskim i prawach pokrewnych
            z dnia 4 lutego 1994 r. (Dz.U. 1994 nr 24 poz. 83) wraz z
            nowelizacją z dnia 25 lipca 2003 r. (Dz.U. 2003 nr 166 poz. 1610)
            oraz z dnia 1 kwietnia 2004 r. (Dz.U. 2004 nr 91 poz. 869)

            \Large
            \medskip
            Kraków \the\year
        \end{center}

        \normalsize
    \end{titlepage}
}

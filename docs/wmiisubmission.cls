\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wmiisubmission}[2019/10/15 Wniosek przeznaczony do uzytku na Wydziale Matematyki i Informatyki Uniwersytetu Jagiellonskiego]

\RequirePackage{xparse}

\NewDocumentCommand{\fillField}{ m O{} g }{%
    % <code>
    \IfNoValueTF{#3}
      {$\underset{\text{#2}}{\parbox[t]{#1}{\dotfill}}$}%
      {$\underset{\text{#2}}{\parbox[t]{#1}{\dotuline{\hfill#3\hfill}}}$}%
    % <code>
}

\newcommand{\boldfillfield}[2]{
    \begin{minipage}{#2}
        \textbf{#1: } \dotfill
    \end{minipage}
}

\NewDocumentCommand{\studentinfo}{ g g g g g g g g g }{%
{
\setstretch{1.6}
      % <code>
      \IfNoValueTF{#1}
        {\boldfillfield{Imię i nazwisko}{8cm}}
        {
        \def\temp{#1}\ifx\temp\empty
          {\boldfillfield{Imię i nazwisko}{8cm}}%
        \else
          \textbf{Imię i nazwisko:} #1%
        \fi
        }
      % <code>

      % <code>
      \IfNoValueTF{#2}
        {\boldfillfield{Nr albumu}{8cm}}
        {
        \def\temp{#2}\ifx\temp\empty
          \boldfillfield{Nr albumu}{8cm}%
        \else
          \textbf{Nr albumu:}  #2%
        \fi
        }
      % <code>

      % <code>
      \IfNoValueTF{#3}
        {\boldfillfield{Rok studiów}{8cm}}
        {
        \def\temp{#3}\ifx\temp\empty
          {\boldfillfield{Rok studiów}{8cm}}
        \else
          {\textbf{Rok studiów:}  #3}%
        \fi
        }
      % <code>

      % <code>
      \IfNoValueTF{#4}
        {\boldfillfield{Kierunek}{8cm}}
        {
        \def\temp{#4}\ifx\temp\empty
          {\boldfillfield{Kierunek}{8cm}}
        \else
          {\textbf{Kierunek:} #4}%
        \fi
        }
      % <code>

      % <code>
      \IfNoValueTF{#5}
        {\boldfillfield{Stopień}{8cm}}
        {
        \def\temp{#5}\ifx\temp\empty
          {\boldfillfield{Stopień}{8cm}}
        \else
          {\textbf{Stopień:} #5}%
        \fi
        }
      % <code>

  }
}

\NewDocumentCommand{\studentaddress}{ g g g g }{%
  {\setstretch{2.3}

    \fillField{8cm}[(nr kodu pocztowego - miejscowość)]{#1}

    \fillField{8cm}[(ulica/osiedle – nr domu/mieszkania)]{#2}

    \fillField{8cm}[(adres e-mail)]{#3}

    \fillField{8cm}[(telefon)]{#4}

  }
}

\NewDocumentCommand{\smallstudentaddress}{ g g }{%
  {\setstretch{2.3}

    \fillField{8cm}[(adres e-mail)]{#1}

    \fillField{8cm}[(telefon)]{#2}

  }
}

\newcommand{\bakalarski}{
    \textit{Zastępca dyrektora ds. dydaktycznych} \\
    \textit{dr Sławomir Bakalarski}
}

\newcommand{\piotrniemiec}{
    \textit{Prodziekan ds. studenckich} \\
    \textit{Wydziału Matematyki i Informatyki}\\
    \textit{dr hab. Piotr Niemiec}
}

% \RequirePackage[showboxes]{textpos}
\RequirePackage{textpos}

\newcommand{\addressee}[2][0cm]{

    \begin{textblock*}{\textwidth}(0cm,#1)
    {
      \phantom{a}\hfill
      \begin{tabular}[c]{@{}l@{}}
          #2
      \end{tabular}
    }
    \end{textblock*}

    \vskip 1cm
}

\NewDocumentCommand{\cracowdate}{ g }{
    \begin{textblock*}{\textwidth}(0cm,0cm)
    {
        % <code>
        \IfNoValueTF{#1}
          {\hfill Kraków, dnia \fillField{2.7cm} ~r.}
          {\hfill Kraków, dnia #1 r.}
        % <code>
    }
    \end{textblock*}

    \vskip -1.23em
}

\newcommand{\requesttitle}[1]{
    \begin{center}
    {\Large \textbf{#1}}
    \end{center}
}

\newcommand{\signature}[1]{
    \fillField{6cm}[#1]
}

\newcommand{\studentsignature}{
    \hspace{\fill} \signature{(podpis studenta)} \hspace{2.0cm}
}

\newcommand{\decision}[1]{
    \textbf{#1} \dotfill
    \vskip 0.5cm
    \noindent
    Data \fillField{3cm} ~Podpis \dotfill \\
}

\LoadClass[a4paper,8pt]{article}
\RequirePackage{polski}
% \RequirePackage[utf8]{inputenc}
% \RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\RequirePackage{calc}
\RequirePackage{amsmath}
% \RequirePackage{mathspec}
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage[normalem]{ulem}
\RequirePackage{microtype}
% \RequirePackage{newpxtext}
% \RequirePackage{newpxmath}

\setmainfont{TeX Gyre Pagella}
% \setmathfont{TeX Gyre Pagella Math}

\geometry{total={210mm,297mm},
    left=25mm,right=25mm,%
    bindingoffset=0mm, top=25mm,bottom=20mm
}

\pagestyle{empty}
\linespread{1.2}
\setlength\parindent{0pt}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

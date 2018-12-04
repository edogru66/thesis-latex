%%
%% This is file `buthesis.cls',
%% 
%% Bilkent University
%% MS and PhD Thesis Style 
%%
%% by Umit V. Catalyurek
%% 
%% October 7, 1999
%% 
%% Edited by Akif Burak Tosun
%% July 20, 2012
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{buthesis}

% --- base class and extensions..
\LoadClass[12pt]{report} 
\RequirePackage{graphicx}

\makeatletter

%% -------- the following variables must be supplied
\def\director#1{\gdef\@director{#1}}
\def\thesistype#1{\gdef\@thesistype{#1}} 
\def\teztipi#1{\gdef\@teztipi{#1}} 

\def\keywords#1{\gdef\@keywords{#1}}
\def\anahtarsoz#1{\gdef\@anahtarsoz{#1}}

\def\dept#1{\gdef\@dept{#1}}
\def\bolum#1{\gdef\@bolum{#1}}
\def\principaladviser#1{\gdef\@principaladviser{#1}}
\def\coadviser#1{\gdef\@coadviser{#1}}
\def\tezyoneticisi#1{\gdef\@tezyoneticisi{#1}}
\def\ikincitezyoneticisi#1{\gdef\@ikincitezyoneticisi{#1}}
\def\advis@r{Adviser}
\def\coadvis@r{Co-Adviser}
\def\principaladvisor#1{\gdef\@principaladviser{#1}\gdef\advis@r{Advisor}}
\def\coadvisor#1{\gdef\@coadviser{#1}\gdef\coadvis@r{Co-Advisor}}
\def\firstreader#1{\gdef\@firstreader{#1}}
\def\secondreader#1{\gdef\@secondreader{#1}}
% third and fourth readers are required in PhD
\def\thirdreader#1{\gdef\@thirdreader{#1}}
\def\fourthreader#1{\gdef\@fourthreader{#1}}
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\tarih#1{\gdef\@tarih{#1}}
\def\baslik#1{\gdef\@baslik{#1}}



\voffset 0mm
\topmargin -5mm
\headsep 15mm
\textheight 220mm 


\hoffset 0mm
\textwidth 145mm
\oddsidemargin 0.6in \evensidemargin 0.6in
\marginparwidth 40pt \marginparsep 12pt

\parskip 0.166in \footskip 25pt
\tolerance=6000
\brokenpenalty=10000

\renewcommand{\baselinestretch}{1.3}
\renewcommand{\linespread}{1.3}

 
\def\thefigure{\thechapter.\@arabic\c@figure}
\def\thetable{\thechapter.\@arabic\c@table}
\def\theequation{\thechapter.\arabic{equation}}

 
\def\@xfloat#1[#2]{\ifhmode \@bsphack\@floatpenalty -\@Mii\else
   \@floatpenalty-\@Miii\fi\def\@captype{#1}\ifinner
      \@parmoderr\@floatpenalty\z@
    \else\@next\@currbox\@freelist{\@tempcnta\csname ftype@#1\endcsname
       \multiply\@tempcnta\@xxxii\advance\@tempcnta\sixt@@n
       \@tfor \@tempa :=#2\do
                        {\if\@tempa h\advance\@tempcnta \@ne\fi
                         \if\@tempa t\advance\@tempcnta \tw@\fi
                         \if\@tempa b\advance\@tempcnta 4\relax\fi
                         \if\@tempa p\advance\@tempcnta 8\relax\fi
         }\global\count\@currbox\@tempcnta}\@fltovf\fi

    \global\setbox\@currbox\color@vbox\normalcolor\vbox\bgroup 
    \def\baselinestretch{1}\@normalsize
    \boxmaxdepth\z@
    \hsize\columnwidth \@parboxrestore}
\long\def\@footnotetext#1{\insert\footins{\def\baselinestretch{1}\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces
      #1\strut}}}
 


\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}
\ifnum\month=12
    \@tempcnta=\year \advance\@tempcnta by 1
\fi

\def\titlepageMS{%
        \thispagestyle{empty}%
        \null\vskip1in%
        \begin{center}
                {\Large\bf\uppercase\expandafter{\@title}}
        \end{center}
        \vfill
        \begin{center}
                {\large
                 \sc a thesis submitted to\\
                the graduate school of engineering and science\\
		of b\.{i}lkent university\\
                in partial fulfillment of the requirements for\\
                the degree of\\
                master of science \\
		in\\
		\lowercase\expandafter{\@dept}\\
                }
        \end{center}
        \vspace{3cm}
        \begin{center}
                {\large
                \rm By\\
                \@author\\
                \@submitdate\\
                }
        \end{center}\vskip.5in\newpage}

  
\def\titlepagePhD{%
        \thispagestyle{empty}%
        \null\vskip1in%
        \begin{center}
                {\Large\bf\uppercase\expandafter{\@title}}
        \end{center}
        \vfill
        \begin{center}
                {\large
                \sc a dissertation submitted to\\
		the graduate school of engineering and science\\
                of b\.{i}lkent university\\
                in partial fulfillment of the requirements for\\
                the degree of\\
		doctor of philosophy\\
                in\\
                \lowercase\expandafter{\@dept}\\
                }
        \end{center}
        \vspace{3cm}
        \begin{center}
                {\large
                \rm By\\
                \@author\\
                \@submitdate\\
                }
        \end{center}\vskip.5in\newpage}
 
\long\def\signatureMS#1{ 
\begin{minipage}{5in}
\@title\\
By
\@author\\
\@submitdate\\
\end{minipage}\\

\parindent 0pt
We certify that we have read this thesis and that in our opinion
it is fully adequate, in scope and in quality, as a thesis for the degree
of Master of Science.

\begin{center}
\begin{minipage}{5.5in}
\parindent=0pt
\par
\vspace{0.5in}

\hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\#1}}
\end{minipage}
\end{center}}

\long\def\signatureMSS#1{
\begin{center}
\begin{minipage}{5.5in}
\parindent=0pt
\par
\vspace{0.5in}
\hspace*{1.8cm}
\hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\#1}}
\end{minipage}
\end{center}}



\def\signaturepageMS{
        \thispagestyle{plain}
        \signatureMS{\@principaladviser (\advis@r)}
        
%        \signatureMSS{\@coadviser (\coadvis@r)} % uncomment this line if there is a co-advisor
        
        \vskip 1cm
        
	\signatureMSS{\@firstreader}
        \vskip 1cm
        \signatureMSS{\@secondreader}

	\vfill	

        \begin{minipage}{5in}
        Approved for the Graduate School of Engineering and Science:\par
        \vspace{1.0in}
        \hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\
                        \@director \\ Director of the Graduate School}}
        \end{minipage}

	\newpage}


\long\def\signaturePhD#1{%
\begin{minipage}{5in}
\@title\\
By
\@author\\
\@submitdate\\
\end{minipage}\\
\parskip 0pt
\parindent 0pt
We certify that we have read this dissertation and that in our opinion
it is fully adequate, in scope and in quality, as a dissertation for the degree
of Doctor of Philosophy.

\begin{center}
\begin{minipage}{5.5in}
\parindent=0pt
\par
\vspace{0.5in}
\hspace*{1.8cm}
\hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\#1}}
\end{minipage}
\end{center}}

\long\def\signaturePhDD#1{
\begin{center}
\begin{minipage}{5.5in}
\parindent=0pt
\par
\vspace{0.5in}
\hspace*{1.8cm}
\hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\#1}}
\end{minipage}
\end{center}}

 
\def\signaturepagePhD{%
        \thispagestyle{plain}
        \signaturePhD{\@principaladviser (\advis@r)}
        
%        \signaturePhDD{\@coadviser (\coadvis@r)} % uncomment this line if there is a co-advisor

        \signaturePhDD\@firstreader

        \signaturePhDD\@secondreader

        \thispagestyle{plain}
        \signaturePhDD\@thirdreader

        \signaturePhDD\@fourthreader
        \vfill

        \begin{minipage}{5in}
        Approved for the Graduate School of Engineering and Science:\par
        \vspace{1.0in}
        \hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\
                        \@director \\ Director of the Graduate School}}
        \end{minipage}

	\newpage}
 
\parskip 0.5cm
\parindent 0.5cm

\renewenvironment{abstract}{%
   \thispagestyle{plain}
   \setlength{\baselineskip}{6mm}
\parindent 0.5cm
   \begin{center}
     {\Large ABSTRACT} \\
     \vspace*{0.5cm}
     {\Large \uppercase\expandafter{\@title}} \\
     \vspace{0.5cm} 
     \@author   \\
     \@thesistype  in \@dept \\
     Advisor: \@principaladviser\\
%     Co-Advisor: \@coadviser\\   % uncomment this line if there is a co-advisor
     \@submitdate \\
   \end{center}
  \noindent\ignorespaces}{{\vfill \noindent {\em Keywords:} {\@keywords}.} \newpage}

\newenvironment{ozet}{%
   \thispagestyle{plain}
   \setlength{\baselineskip}{6mm}
\parindent 0.5cm
   \begin{center}
     {\Large \"{O}ZET} \\
     \vspace*{0.5cm}
     {\Large \uppercase\expandafter{\@baslik}} \\
     \vspace{0.5cm} 
     \@author   \\
     \@bolum, \@teztipi \\
     Tez Dan{\i\c s}man{\i }: \@tezyoneticisi \\
%     \. Ikinci Tez Dan{\i\c s}man{\i }: \@ikincitezyoneticisi \\ % uncomment this line if there is a co-advisor
     \@tarih \\
   \end{center}
  \noindent\ignorespaces} {{\vfill \noindent {\em Anahtar s\"{o}zc\"{u}kler\/}: {\@anahtarsoz}.} \newpage}

\newenvironment{ack}{%
   \thispagestyle{plain}
\parindent 0.5cm
   {\begin {center} {\bf \Large \bf Acknowledgement}\end{center}}
   \vspace{0.5cm} \noindent\ignorespaces} {\newpage} 

\newenvironment{dedication}{
   \thispagestyle{plain}
   \vspace*{40mm}
} {\newpage}

% Start with pagestyle{headings} in case front matter isn't processed
\pagestyle{headings}
\makeatother

\pagenumbering{roman}
\parskip 0.5cm
\parindent 0.5cm




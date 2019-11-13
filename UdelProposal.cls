

\NeedsTeXFormat{LaTeX2e}

%
% This document class is based on the 'article' document class
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}


%
% Some packages we depend upon
% 
\usepackage[letterpaper,
            lmargin=1.0in,
            rmargin=1.0in,
            tmargin=1.0in,
            bmargin=1.0in]{geometry}  % Easily set margins 
\usepackage[title,titletoc]{appendix} % Configure appendix formatting
\usepackage{fancyhdr}
\usepackage{setspace}
\usepackage[plainpages=false,
            pdfpagelabels]{hyperref}  % Get nice PDF links

%
% Initially define all of our variables as empty
%
\gdef\@UdelProposalDay{}
\gdef\@UdelProposalMonth{}
\gdef\@UdelProposalYear{}
\gdef\@UdelProposalDepartment{}
\gdef\@UdelProposalSchool{}
\gdef\@UdelProposalDocumentType{}
\gdef\@UdelProposalCommitteeChair{}
\gdef\@UdelProposalMemberOne{}
\gdef\@UdelProposalMemberTwo{}
\gdef\@UdelProposalMemberThree{}
\gdef\@UdelProposalMemberFour{}
\gdef\@UdelProposalAuthor{}
\gdef\@title{}



%
% Some commands to set our variables
%
\newcommand{\proposalday}[1]          {\ifx\empty#1\else \gdef\@UdelProposalDay{#1}            \fi}
\newcommand{\proposalmonth}[1]        {\ifx\empty#1\else \gdef\@UdelProposalMonth{#1}          \fi}
\newcommand{\proposalyear}[1]         {\ifx\empty#1\else \gdef\@UdelProposalYear{#1}           \fi}
\newcommand{\department}[1]           {\ifx\empty#1\else \gdef\@UdelProposalDepartment{#1}     \fi}
\newcommand{\school}[1]               {\ifx\empty#1\else \gdef\@UdelProposalSchool{#1}     \fi}
\newcommand{\documenttype}[1]         {\ifx\empty#1\else \gdef\@UdelProposalDocumentType{#1}   \fi}
\newcommand{\committeechair}[1]       {\ifx\empty#1\else \gdef\@UdelProposalCommitteeChair{#1} \fi}
\newcommand{\committeememberone}[1]   {\ifx\empty#1\else \gdef\@UdelProposalMemberOne{#1}      \fi}
\newcommand{\committeemembertwo}[1]   {\ifx\empty#1\else \gdef\@UdelProposalMemberTwo{#1}      \fi}
\newcommand{\committeememberthree}[1] {\ifx\empty#1\else \gdef\@UdelProposalMemberThree{#1}    \fi}
\newcommand{\committeememberfour}[1]  {\ifx\empty#1\else \gdef\@UdelProposalMemberFour{#1}     \fi}
\renewcommand{\author}[1]             {\ifx\empty#1\else \gdef\@UdelProposalAuthor{#1}         \fi}
\renewcommand{\title}[1]              {\ifx\empty#1\else \gdef\@title{#1}                         \fi}


%
% Some commands to get the values of our variables
%
\newcommand{\theproposalday}{%
    \ifx\@UdelProposalDay\@empty
        \PackageError{UdelProposal}{'proposalday' has not been defined}\@ehc
    \else
        \@UdelProposalDay
    \fi
}

\newcommand{\theproposalmonth}{%
    \ifx\@UdelProposalMonth\@empty
        \PackageError{UdelProposal}{'proposalmonth' has not been defined}\@ehc
    \else
        \@UdelProposalMonth
    \fi
}

\newcommand{\theproposalyear}{%
    \ifx\@UdelProposalYear\@empty
        \PackageError{UdelProposal}{'proposalyear' has not been defined}\@ehc
    \else
        \@UdelProposalYear
    \fi
}

\newcommand{\thedepartment}{%
    \ifx\@UdelProposalDepartment\@empty
        \PackageError{UdelProposal}{'department' has not been defined}\@ehc
    \else
        \@UdelProposalDepartment
    \fi
}

\newcommand{\theschool}{%
    \ifx\@UdelProposalSchool\@empty
        \PackageError{UdelProposal}{'school' has not been defined}\@ehc
    \else
        \@UdelProposalSchool
    \fi
}

\newcommand{\thedocumenttype}{%
    \ifx\@UdelProposalDocumentType\@empty
        \PackageError{UdelProposal}{'documenttype' has not been defined}\@ehc
    \else
        \@UdelProposalDocumentType
    \fi
}

\newcommand{\thecommitteechair}{%
    \ifx\@UdelProposalCommitteeChair\@empty
        \PackageError{UdelProposal}{'committeechair' has not been defined}\@ehc
    \else
        \@UdelProposalCommitteeChair
    \fi
}

\newcommand{\thecommitteememberone}{%
    \ifx\@UdelProposalMemberOne\@empty
        \PackageError{UdelProposal}{'committeememberone' has not been defined}\@ehc
    \else
        \@UdelProposalMemberOne
    \fi
}

\newcommand{\thecommitteemembertwo}{%
    \ifx\@UdelProposalMemberTwo\@empty
        \PackageError{UdelProposal}{'committeemembertwo' has not been defined}\@ehc
    \else
        \@UdelProposalMemberTwo
    \fi
}

\newcommand{\thecommitteememberthree}{%
    \ifx\@UdelProposalMemberThree\@empty
        \PackageError{UdelProposal}{'committeememberthree' has not been defined}\@ehc
    \else
        \@UdelProposalMemberThree
    \fi
}

\newcommand{\theauthor}{%
    \ifx\@UdelProposalAuthor\@empty
        \PackageError{UdelProposal}{'author' has not been defined}\@ehc
    \else
        \@UdelProposalAuthor
    \fi
}

\newcommand{\thetitle}{%
    \ifx\@title\@empty
        \PackageError{UdelProposal}{'author' has not been defined}\@ehc
    \else
        \@title
    \fi
}

% Make the Table of Contents title read 'Outline'
\renewcommand\contentsname{\Large{Outline}}

% Make the References title read 'Bibliography'
\renewcommand\refname{\Large{Bibliography}}

% A command to control the line spacing
\newcommand{\newlinestretch}[1]{\renewcommand{\baselinestretch}{#1}\normalsize}

% Use a nice font when displaying source listings
\renewcommand{\ttdefault}{pcr}



%
% Format of the title page body
%
\renewcommand{\maketitle}{%
    \lhead{\theauthor}
    \chead{\empty}
    \rhead{\thedocumenttype}
    \lfoot{\empty}
    \cfoot{\thepage}
    \rfoot{\empty}

    \begin{titlepage}
    \singlespacing
    \pagestyle{empty}
    \begin{center}
        {\ }\\[1in]
        \newlinestretch{1.5}
        {\sc{{\Large \thetitle}}}\\ [5ex]
        \rule{4in}{0.5pt}\\[5ex]
        A {\thedocumenttype} by \\ [1.5ex]
        \theauthor \\ [1.5ex]
        \thedepartment \\[1.5ex]
        \theschool \\[1.5ex]
 %       {\theproposalday} {\theproposalmonth} {\theproposalyear} \\[1.5ex]
        \rule{4in}{0.5pt}\\[5ex]
        
        \newlinestretch{1.2}
        Committee Members:\\[2ex]
        \indent {\thecommitteechair} \\[3ex]
        \ifx \@UdelProposalMemberOne   \empty \else \indent\@UdelProposalMemberOne\\ [3ex]  \fi 
        \ifx \@UdelProposalMemberTwo   \empty \else \indent\@UdelProposalMemberTwo\\ [3ex]  \fi
        \ifx \@UdelProposalMemberThree \empty \else \indent\@UdelProposalMemberThree\\[3ex] \fi

    \end{center}
    \end{titlepage}
}


%
% Command to generate bibliography
%
\newcommand{\makebibliography}[1]{%
    \singlespacing
    \bibliographystyle{abbrvnat}
    \phantomsection
    \addcontentsline{toc}{section}{Bibliography}
    \bibliography{#1}
}


%
% Redefine the 'abstract' environment to match the guidelines
%
\renewenvironment{abstract}{
   % \doublespacing
    \begin{center}
        \Large{\textbf{Abstract}}
        \vspace{.1in}
    \end{center}
    \phantomsection
    \addcontentsline{toc}{section}{Abstract}
}{\par\singlespacing\newpage}

%
% Define the 'frontmatter' environment

\newenvironment{frontmatter}
  {\pagestyle{plain}\pagenumbering{roman}}
  {\cleardoublepage\pagenumbering{arabic}}

%section - subsection - subsubsection --- depth 3
\setcounter{tocdepth}{4} 

\setcounter{secnumdepth}{4}

\flushbottom

my-dot-files
============

my dot files, of course

hints
-----

Here are random hints about stuff for my setup:

  * to search and replace within many files, for example to replace a LaTeX label `chap:multigrid` by `chap:mg`, do two steps:

        grep chap:multigrid *.tex

  then

        find . -name "*.tex" -print | xargs sed -i 's/chap:multigrid/chap:mg/g'

  * to print two-sided with page range:
  
        lpr -P Brother-HL-3170CDW-series -o Duplex=DuplexNoTumble -o page-ranges=1-4,7,9-12 foo.pdf


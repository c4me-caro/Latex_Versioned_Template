@echo off
setlocal
set GITVERSION=
set GITDATE=
set GITCREATED=
git rev-parse --short HEAD > temp.txt
set /p GITVERSION=<temp.txt
git log -1 --format=%%cd --date=iso > temp.txt
set /p GITDATE=<temp.txt
echo \newcommand{\gitversion}{%GITVERSION%} > gitinfo.tex
echo \newcommand{\gitdate}{%GITDATE%} >> gitinfo.tex
echo \newcommand{\gitcreated}{%GITCREATED%} >> gitinfo.tex
del temp.txt
endlocal
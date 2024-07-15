@echo off
setlocal
set GITVERSION=
set GITDATE=
set GITCREATED=
set FRSTCMMTHASH=
git rev-parse --short HEAD > temp.txt
set /p GITVERSION=<temp.txt
git log -1 --format=%%cd --date=short > temp.txt
set /p GITDATE=<temp.txt
git rev-list --max-parents=0 HEAD > temp.txt
set /p FRSTCMMTHASH=<temp.txt
git show --date=short %FRSTCMMTHASH% --format=%%cd -s > temp.txt
set /p GITCREATED=<temp.txt
echo \newcommand{\gitversion}{%GITVERSION%} > gitinfo.tex
echo \newcommand{\gitdate}{%GITDATE%} >> gitinfo.tex
echo \newcommand{\gitcreated}{%GITCREATED%} >> gitinfo.tex
del temp.txt
endlocal

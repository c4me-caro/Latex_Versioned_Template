#!/bin/bash

GITVERSION=$(git rev-parse --short HEAD)
GITDATE=$(git log -1 --format="%cd" --date=short)
FIRSTCOMMIT=$(git rev-list --max-parents=0 HEAD)
GITCREATED=$(git show --date=short "$FIRSTCOMMIT" --format="%cd" -s)

echo \newcommand{\gitversion}{$GITVERSION} > gitinfo.tex
echo \newcommand{\gitdate}{$GITDATE} >> gitinfo.tex
echo \newcommand{\gitcreated}{$GITCREATED} >> gitinfo.tex

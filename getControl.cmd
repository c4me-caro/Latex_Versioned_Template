@echo off
for /f "tokens=*" %%i in ('git rev-parse --short HEAD') do set GITVERSION=%%i
for /f "tokens=*" %%i in ('git log -1 --format=%%cd --date=short') do set GITDATE=%%i
echo \newcommand{\gitversion}{%GITVERSION%} > gitinfo.tex
echo \newcommand{\gitdate}{%GITDATE%} >> gitinfo.tex

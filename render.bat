rem @echo off
curl -OL https://dl.dropboxusercontent.com/s/6mztoeb6xf78g5w/COVID-19.csv
setlocal enabledelayedexpansion
cd /d %~dp0
set rpath=C:\Program Files\R\R-3.6.2\bin
set logile=render.log

set inputFile=index.Rmd
set outputFile=index.html

rem %rpath%\\Rscript.exe render.R %inputFile% %outputFile% >> %logFile% 2>&1
rem "%rpath%\Rscript.exe" render.R %inputFile% %outputFile%
"%rpath%\Rscript.exe" -e "rmarkdown::render('index.Rmd', output_file='index.html')"
index.html

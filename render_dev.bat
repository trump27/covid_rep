rem @echo off
curl -OL https://dl.dropboxusercontent.com/s/6mztoeb6xf78g5w/COVID-19.csv
curl -OL https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv
curl -OL https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv
curl -OL https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv

setlocal enabledelayedexpansion
cd /d %~dp0
set rpath=C:\Program Files\R\R-4.0.0\bin
set logile=render.log

rem set inputFile=index.Rmd
rem set outputFile=index.html

rem %rpath%\\Rscript.exe render.R %inputFile% %outputFile% >> %logFile% 2>&1
rem "%rpath%\Rscript.exe" render.R %inputFile% %outputFile%
"%rpath%\Rscript.exe" -e "rmarkdown::render('dev.Rmd', output_file='dev.html')"
dev.html

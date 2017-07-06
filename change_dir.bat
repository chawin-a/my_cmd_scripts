@echo off
if "%1" == "" (cd /d %HOMEDRIVE%\%HOMEPATH%) else (cd /d %*)
%HOMEDRIVE%\%HOMEPATH%\Scripts\git_check_branch

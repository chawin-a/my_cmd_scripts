@echo off
if '''%*''' == '''''' (cd /d %HOMEDRIVE%\%HOMEPATH%) else (cd /d %*)
%HOMEDRIVE%\%HOMEPATH%\Scripts\git_check_branch

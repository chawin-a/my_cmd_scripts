@echo off

SET OLDPATH=%PATH%
:: For add more environments on cmd
DOSKEY add-env=notepad "%HOMEDRIVE%\%HOMEPATH%\Scripts\env.bat"

:: Alias commands
DOSKEY git=%HOMEDRIVE%\%HOMEPATH%\Scripts\git_command.bat $*
DOSKEY cd=%HOMEDRIVE%\%HOMEPATH%\Scripts\change_dir $*
DOSKEY cpp_run=%HOMEDRIVE%\%HOMEPATH%\Scripts\cpp_run.bat $1 $2
DOSKEY open=start

:: Home
DOSKEY ~=%HOMEDRIVE%\%HOMEPATH%\Scripts\change_dir %HOMEDRIVE%\%HOMEPATH%\

:: Work
DOSKEY set_work=%HOMEDRIVE%\%HOMEPATH%\Scripts\set_work

:: Check Git Branch
%HOMEDRIVE%\%HOMEPATH%\Scripts\git_check_branch
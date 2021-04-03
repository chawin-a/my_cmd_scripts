@echo off
set GITBRANCH=
git rev-parse --abbrev-ref HEAD 1> %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\tmp 2> nul
set /p GITBRANCH=<%HOMEDRIVE%\%HOMEPATH%\Scripts\temp\tmp

set GITUNTRACK=
git status -s 2> nul | head -n 1 1> %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\tmp
set /p GITUNTRACK=<%HOMEDRIVE%\%HOMEPATH%\Scripts\temp\tmp

if not "%GITUNTRACK%" == "" (
	set GITBRANCH=%GITBRANCH% *
)

if "%GITBRANCH%" == "" (
    @SET "prompt=%CONDA_PROMPT_MODIFIER%$E[0;1;40m[ $E[1;36;40m%username% $E[0;1;40m:$s$E[1;40;32m$t$h$h$h $E[0;1;40m] $E[31m~ $E[35;40m$P$_$E[0;1;40m$G$s"
) else (
    @SET "prompt=%CONDA_PROMPT_MODIFIER%$E[0;1;40m[ $E[1;36;40m%username% $E[0;1;40m:$s$E[1;40;32m$t$h$h$h $E[0;1;40m] $E[31m~ $E[35;40m$P$_$E[0;1;40m$C$E[1;33;40m%GITBRANCH%$E[0;1;40m$F$s$G$s"
)

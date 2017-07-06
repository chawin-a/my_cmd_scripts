@echo off
set GITBRANCH=
git rev-parse --abbrev-ref HEAD 1> %HOMEDRIVE%\%HOMEPATH%\Scripts\tmp 2> nul
set /p GITBRANCH=<%HOMEDRIVE%\%HOMEPATH%\Scripts\tmp
if "%GITBRANCH%" == "" (
    prompt $E[0;1;40m[ $E[1;36;40m%username% $E[0;1;40m: $E[1;40;32m$d$s$t$h$h$h$h$h$h $E[0;1;40m] $E[31m~ $E[35;40m$P$_$E[0;1;40m$G$s
) else (
    prompt $E[0;1;40m[ $E[1;36;40m%username% $E[0;1;40m: $E[1;40;32m$d$s$t$h$h$h$h$h$h $E[0;1;40m] $E[31m~ $E[35;40m$P$_$E[0;1;40m$C$E[1;33;40m%GITBRANCH%$E[0;1;40m$F$s$G$s
)

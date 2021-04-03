@ECHO off
set /a i=1
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
:while
    %1 > %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\input    
    %2 < %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\input > %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\result1
    %3 < %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\input > %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\result2
    diff %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\result1 %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\result2 > %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\compared
    head -n 1 %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\compared > %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\tmp
    set /p test=<%HOMEDRIVE%\%HOMEPATH%\Scripts\temp\tmp
    echo | set /p=[ TEST #%i% ] : 
    if not "%test%" == "" (
        echo %ESC%[31mFAILED%ESC%[0m
    	type %HOMEDRIVE%\%HOMEPATH%\Scripts\temp\compared
		goto :finish
	)
    echo %ESC%[32mPASSED%ESC%[0m
    set /a i+=1
goto :while
:finish
@SET "test="
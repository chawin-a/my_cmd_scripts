@echo off
g++ -std=c++17 -O2 -Wall -Wl,--stack=268435456 -g -D LOCAL %1
echo.
IF EXIST %2.input (
    a.exe < %2.input
) ELSE (
    a.exe
)
echo.
echo.
echo Exit Code: %errorlevel%
del a.exe
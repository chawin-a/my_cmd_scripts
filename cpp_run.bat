@echo off
g++ -std=c++17 -O2 -Wall -Wl,--stack=268435456 -g -D LOCAL %1 -o %2
echo.
IF EXIST %2.input (
    %2 < %2.input
) ELSE (
    %2
)
echo.
echo.
echo Exit Code: %errorlevel%
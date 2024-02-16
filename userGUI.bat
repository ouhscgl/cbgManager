@echo off
start "" "requInput/requestUserInput.exe" "requInput/in_rui.txt" "requInput/on_rui.txt" 1

:waitloop
timeout /t 2 /nobreak >nul
tasklist | find /i "requestUserInput.exe" >nul
if errorlevel 1 (
    start /min "" "autoInput/autoInput.exe" "autoInput/autoInput.txt"
) else (
    goto waitloop
)
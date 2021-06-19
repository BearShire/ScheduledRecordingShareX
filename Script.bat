@echo off

set /p time_h="Enter Recording timeout(H): "

set /p time_m="Enter Recording timeout(M): "

set /p time_s="Enter Recording timeout(S): "

set /a result_h = %time_h% * 60 * 60

set /a result_m = %time_m% * 60

set /a result_s = %time_s%

echo %result_h%

echo %result_m%

echo %result_s%

set /a time = %result_s% + %result_m% + %result_h%

echo %time%

timeout /t %time% /nobreak

start "" "C:\Program Files"\Sharex\sharex.exe -ScreenRecorder

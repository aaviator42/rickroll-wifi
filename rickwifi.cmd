@echo off 
title Rickroll WiFi for Windows
echo Rickroll WiFi for Windows
echo by aaviator42

echo NEVER GONNA GIVE YOU UP > rickme.txt
echo NEVER GONNA LET YOU DOWN >> rickme.txt
echo NEVER GONNA MAKE YOU CRY >> rickme.txt
echo NEVER GONNA SAY GOODBYE >> rickme.txt


:Main
FOR /F "tokens=*" %%G IN (rickme.txt) DO (
netsh wlan set hostednetwork ssid="%%G" key=this_is_so_cool! >nul
netsh wlan start hostednetwork >nul
echo CURRENT SSID: %%G
timeout /t 1 >nul
netsh wlan stop hostednetwork >nul
)
echo REPEAT!
goto :Main

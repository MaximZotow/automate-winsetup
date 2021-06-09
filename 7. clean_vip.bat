@echo off
taskkill /F /T /IM Monitor.exe
taskkill /F /T /IM Monitor.exe
dir /B C:\ProgramData\InfoTeCS | find "3" > %userprofile%\Documents\tmp.txt
for /F %%i in (%userprofile%\Documents\tmp.txt) do (echo %%i & C:\"Program Files (x86)\InfoTeCS\ViPNet Client\KeySetup.exe" /clean /td %programdata%\InfoTeCS\%%i)
del %userprofile%\Documents\tmp.txt
C:\"Program Files (x86)\InfoTeCS\ViPNet Client\Monitor.exe"
explorer.exe C:\"ProgramData\InfoTeCS"

(
cd C:\
RD /S /Q "C:\work"
del "%~F0"
powershell.exe -ExecutionPolicy ByPass -command  Clear-RecycleBin -Force 
)
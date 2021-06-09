if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
echo "PC will restart right after"
$name = Read-Host -Prompt 'Enter PC name'
Rename-Computer -NewName $name
echo "Your new name is"
$name
Read-Host -Prompt "Check name in Control Panel. Press any key to open"
control /name Microsoft.System
Read-Host -Prompt "Press any key to reboot"
Restart-Computer
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
$domain = "domain"
$username = "username" 
$password = "password" | ConvertTo-SecureString -asPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential($username,$password)
$pcname = hostname
Write-Host "Wait 5 seconds"
sleep 5
Read-Host -Prompt "Press any key to enter domain"
Add-Computer -ComputerName $pcname -DomainName $domain -Credential $cred -force -Options JoinWithNewName,AccountCreate
Read-Host -Prompt "Press any key to open control panel"
control /name Microsoft.System
Read-Host -Prompt "Press any key to reboot"
Restart-Computer

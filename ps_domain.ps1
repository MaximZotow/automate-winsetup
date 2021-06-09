if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
$domain = "domain"
$password = "password" | ConvertTo-SecureString -asPlainText -Force
$username = "username" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
#echo "Domain $domain"
#echo "Login $username"
#echo "Password: $password"
Read-Host -Prompt "Press any key to enter domain"
Add-Computer -ComputerName $env:computername -DomainName $domain -DomainCredential $credential
Read-Host -Prompt "Press any key to open control panel"
control /name Microsoft.System
Read-Host -Prompt "Press any key to reboot"
Restart-Computer

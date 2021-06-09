$namepc = Read-Host "Computername"
$username = 'username'
$pcname = hostname
$password = 'password' | ConvertTo-SecureString -AsPlainText -Force
$domain = 'domain'
$cred = New-Object System.Management.Automation.PSCredential($username, $password)

#sleep 5
#Add-Computer -ComputerName $pcname -DomainName $domain -Credential $cred -force -Options JoinWithNewName,AccountCreate -restart
Write-Host HOSTNAME $namepc
Read-Host
Restart-Computer

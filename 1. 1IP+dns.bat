
netsh interface ipv4 set address name="Ethernet 3" static 192.168.1.2 255.255.255.0 192.168.1.1 && netsh interface ipv4 set dns "Ethernet 3" static 1.1.1.1 validate=no && netsh interface ipv4 add dns "Ethernet 3" 1.1.2.2 validate=no & C:\Windows\System32\ncpa.cpl
netsh interface ipv4 show config "Ethernet 3"
control /name Microsoft.System
pause
C:\work\install\user_install\abn.dst C:\"Program Files (x86)\InfoTeCS\ViPNet Client\Monitor.exe"
pause
C:\"Program Files (x86)\InfoTeCS\ViPNet Client\Monitor.exe

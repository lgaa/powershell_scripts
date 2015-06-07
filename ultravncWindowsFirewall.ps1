$date = Get-Date -format "yyyyMMdd"
$exportfilename = "C:\temp\"+ $date + "WFconfiguration.wfw"
netsh advfirewall export $exportfilename
netsh advfirewall firewall add rule name="VNC1" dir=in action=allow protocol=TCP localport=5900
netsh advfirewall firewall add rule name="VNC2" dir=in action=allow protocol=TCP localport=5800
netsh advfirewall firewall add rule name="UltraVNC" dir=in action=allow program="C:\Program Files (x86)\uvnc bvba\UltraVnc\winvnc.exe"
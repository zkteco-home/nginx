@echo on
cd /d %~dp0

sc create nginx binPath= "\"%CD%\nginx.exe\" --service-run -c \"conf\nginx.conf\"" DisplayName= "Nginx" start= auto depend= TCPIP
sc description nginx "Nginx Web Service"
net start nginx





@echo off
echo wscript.echo year(date) ^& right(100 + month(date),2) ^& right(100+day(date),2)  > "%temp%\dateparts.vbs"
for /f "tokens=1 delims=" %%a in ('cscript //nologo "%temp%\dateparts.vbs"') do set yyyymmdd=%%a
echo Today is %yyyymmdd%
robocopy C:\nfs-share D:\robo-dest /e /z /copyall /TEE /UNILOG+:C:\FS-to-NAS-robo-%yyyymmdd%.log
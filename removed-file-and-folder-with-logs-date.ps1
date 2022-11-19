$date = get-date -f yyyy-MM-dd-HH-mm
Get-ChildItem -Path C:\nfs-share\file3\* | Remove-Item -Verbose -Force -Confirm:$false *> C:\remove-recordings-$date.log
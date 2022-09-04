$csvfile = "C:\FILE.CSV" 
Import-Csv $csvfile | foreach { 
$oldName = $_.OldName;
$newName = $_.NewName;
$username = 'domain\domain-administrator'
$password = 'password-for-domain-admin'
$pass = ConvertTo-SecureString -AsPlainText $password -Force
$cred = New-Object System.Management.Automation.PSCredential -ArgumentList $username,$pass
Write-Host "Renaming computer from: $oldName to: $newName";
Rename-Computer -ComputerName $oldName -NewName $newName -DomainCredential $cred  -Force
Restart-Computer -ComputerName $oldName -Force
}

# Remote session
$iis = New-PsSession -ComputerName localhost
Get-PsSession

# Remove session
$iis = New-PsSession -ComputerName localhost
$iis | Remove-PsSession

# Remove all opened sessions
Get-PsSession | Remove-PsSession

# Starting multiple sessions
$sessions = New-PSSession -computerName localhost,127.0.0.1
Enter-PsSession -session $sessions[0]
Enter-PsSession -session ($sessions | where { $_.computername -eq 'localhost' })



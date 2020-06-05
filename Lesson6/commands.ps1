# Create folder and share it to other people
New-Item -Path C:\Temp\TestPowerShell -Type Directory

# Share folder
$myShare = New-SmbShare -Name Labs -Path C:\Temp\TestPowerShell -Description "Photos" -ChangeAccess Everyone -FullAccess Administrato
rs -CachingMode Documents

#Enabling WinRM (remore access)
Enable-PSRemoting

# Setup remote session (in this example connection is established on localhost)
Enter-PSSession -computername localhost

# Exit remote session
Exit-PSSession

# Sending command to multiple computers (one-to-many communication)
Invoke-Command -computerName localhost,127.0.0.1 -command {Get-EventLog Security -newest 10}

# On 2 remote machines list top 10 memory-consuming process
Invoke-Command -scriptblock {Get-Process | Sort VM -Descending | Select-Object -first 10 } -ComputerName localhost,127.0.
0.1
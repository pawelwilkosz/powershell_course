# Foreach loop for ls command
$result = ls /

Write-Host "Number of catalogs: " $result.Count

foreach($i in $result){
	Write-Host $i
}

# ForEach-Objects loop
$result = Get-Process
ForEach-Object -InputObject $result { Write-Host "Process: "  $_.ProcessName}

# Checking execution policy for PowerShell scripts
Get-ExecutionPolicy

# Setting execution policy
Set-ExecutionPolicy

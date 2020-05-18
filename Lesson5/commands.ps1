# Operators
# -eq - equals
# -ne - not equals
# -ge/ -le - greater/lower and equals
# - gt/ -lt - greater/lower
# Others: -and -or -not -like -match

# Return the list of running process
Get-Service | Where -filter { $_.Status -eq 'Running' }

# Add "Test prefix for all names from current folder
ls | Where-Object -filter { Write-Host "Test" $_.Name }

# Additional functionshel - Gm
Get-Process | Gm

# Get the list of the most memory consumed process excluding current PowerShell
Get-Process | Where-Object -filter { $_.Name -ne '*powershell*' } | Sort VM -descending | Select -first 10

# Summary
Get-Process | Where-Object -filter { $_.Name -ne '*powershell*' } | Sort VM -descending | Select -first 10 | Measure-Object -
property VM -sum

# Excercise 1
Import-Module NetAdapter
Get-NetAdapter | Where-Object -filter { $_.Virtual -eq $False }


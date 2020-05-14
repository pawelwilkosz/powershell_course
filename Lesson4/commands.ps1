# Formatting output
Get-Process | Format-Wide name -col 4
Get-Service | Format-Table Name,@{name='VM(MB)';expression={$_.Name}}, Status, DisplayName
Get-Process | Out-GridView

# Merging commands
Get-Process; Get-Service

# Excercise 1
Get-Process | Format-Table Name, Id, Responsing -autosize -wrap

# Excercise 2
Get-Process | Format-Table Name, Id, @{l='VirtualMB'; e={$_.vm/1mb}}, @{l='PhysicalMB'; e={$_.workingset/1MB}} -autosize

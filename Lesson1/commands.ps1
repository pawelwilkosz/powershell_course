# Show the list of all running processes
ps

# ps is an alias, to show the full command please execute following:
Get-Alias ps

# Get the list of all aliases
Get-Alias

# Get all services beginning from M letter
Get-Service M*

# Get top 100 events from Application Event Log
Get-Help Get-EventLog
Get-EventLog -LogName Application -Newest 100
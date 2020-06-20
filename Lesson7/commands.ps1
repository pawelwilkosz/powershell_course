# Required PowerShell 3
# WMI - Windows Management Instructions
Get-CimInstance -Namespace root\securitycenter2 -ClassName antispywareproduct

# Multithreading
start-job -scriptblock { dir }
start-job -scriptblock { get-eventlog -computer localhost }

# To get a list of jobs
get-job

# Job Details
get-job -id 1 | format-list *

# Receiving job details
receive-job -id 1

# To keep results in a buffer (doesn't disappear after first reading)
receive-job -id 1 -keep

# Get details of child job
get-job -id 1 | select-object -expand childjobs

# Other job commands
Remove-Job
Stop-Job
Wait-Job

# Job scheduler
Register-ScheduledJob -Name DailyProc -ScriptBlock { Get-Process } -Trigger (New-JobTrigger -Daily -At 2am) -ScheduledJobOption (New-ScheduledJobOption -WakeToRun-RunElevated)

### Homework
# Create job which will find all bash scripts
Start-Job { dir / -recurse -filter '*.sh' }
Receive-Job -Id <job_id>

# Create job above on remote computers
Invoke-Command -scriptblock { ls / -recurse -filter *.sh } -computerName 127.0.0.1,localhost -asjob

# getting from txt file
Invoke-Command -scriptblock { ls / -recurse -filter *.sh } -computerName (get-content computers.txt) -asjob

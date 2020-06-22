# To see the list of methods
"text-to-string" | gm
5 | gm

# Assign to variable
$var = "Text to assign"
Write-Host $var

# Variable name with empty characters
${server name} = "HOST-01"
Write-Host ${server name}

# Breaking the line
$computerName = `
"My_Computer-001" `
Write-Host $computerName

# Formatting output
$phrase="My name is Computer `n and I work in Network"
Write-Host $phrase

# Table
$tab = "Server1", "Server2", "Server3"
foreach($item in $tab)
{
	Write-Host $item
}

# Change letters to lower
$tab = "Server1", "Server2", "Server3"
$computers = $tab | ForEach-Object {$_.ToLower()}
$computers

# Reading number
[int]$number = Read-Host "Read the number"
Write-Host $number

# Homework
Invoke-Command -scriptblock {ls} -computername 127.0.0.1,localhost -asjob
Get-Job
$results = Receive-Job 5 -keep
Write-Host $results
$result | export-clixml ls.xml

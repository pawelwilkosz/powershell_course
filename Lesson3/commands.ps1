# Export to CSV
Get-Process | Export-CSV proces.csv

# To read process and store them in csv format
Import-Csv proces.csv

# Export to XML
Get-Process | Export-CliXML proces.xml

# Compare property name between csv and actual running processes
diff -reference (Import-Csv proces.csv) -difference (Get-Process) -property name

# Put command results to the HTML file
Get-Process | ConvertTo-Html | Out-File index.html 

# Resolve DNS Name for google.com
Import-Module -name DNSClient
Resolve-DnsName google.com

# Get all chrome processes and its CPU Utilization with desc order
Get-Process | Sort-Object -property ProcessName | Sort-Object CPU -descending | Select-Object -property ProcessName,CPU | Whe
re-Object -Property ProcessName -eq "chrome"
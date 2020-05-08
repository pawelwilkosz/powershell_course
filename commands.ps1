# Export to CSV
Get-Process | Export-CSV proces.csv

# To read 
Import-Csv proces.csv

# Export to XML
Get-Process | Export-CliXML proces.xml

# Compare property name between csv and actual running processes
diff -reference (Import-Csv proces.csv) -difference (Get-Process) -property name

# Put command results to the HTML file
Get-Process | ConvertTo-Html | Out-File index.html
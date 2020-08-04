# Select error lines from file
Get-ChildItem -filter '*log*' -recurse | Select-String -pattern "\serror\s" | Format-Table Filename,Linenumber,line -wrap
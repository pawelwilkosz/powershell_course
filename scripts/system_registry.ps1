# 
# Copyright (C) 2020 by Pawel Wilkosz
# github.com/pawelwilkosz
#

param(
    [Parameter(Mandatory = $true,
    HelpMessage = "Path in regisnry in format \root\path1\path2")]
    [String]$path,

    [Parameter(Mandatory = $true,
    HelpMessage = "Registry Key")]
    [String]$registryKey,

    [Parameter(Mandatory = $true,
    HelpMessage="Value")]
    [String]$value
)

Write-Host $path

$PREFIX = "HKCU"

Set-ItemProperty -Path $PREFIX":\"$path -Name $registryKey -Value $value
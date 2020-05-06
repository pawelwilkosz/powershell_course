# Add to registry HKEY_CRRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer
# Value DontPrettyPath 1

cd HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer
cd advanced
Set-ItemProperty -Path . -Name DontPropertyPath -Value 1

# In C:\Tmp create new directory Test and new empty file test using New-Item command
New-Item -Path . -ItemType Directory -Name Test
cd Test
New-Item -Path . -ItemType File -Name File.txt
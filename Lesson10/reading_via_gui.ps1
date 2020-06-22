[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$computerName = [Microsoft.VisualBasic.Interaction]::InputBox('Read computer name','Computer name','localhost')
Write-Output "Your Computer name is"
Write-Host $computerName -fore yellow -back Magenta


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

cp D:\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
cp D:\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1

. D:\Documents\WindowsPowerShell\Replace-String.ps1
. D:\Documents\WindowsPowerShell\psp.ps1
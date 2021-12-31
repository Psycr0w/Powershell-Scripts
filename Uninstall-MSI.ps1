param(

    [string]$softwareName

)

 

$uninstall32 = Get-ChildItem "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match $softwareName } | Select-Object UninstallString

$uninstall64 = Get-ChildItem "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match $softwareName } | Select-Object UninstallString

 

if ($uninstall64)

{

$uninstall64 = $uninstall64.UninstallString -Replace "msiexec.exe","" -Replace "/I","" -Replace "/X",""

Write-Output "Uninstalling..."

foreach ($item in $uninstall64)

{

    $msi = $item.Trim()

    start-process "msiexec.exe" -arg "/X $msi /qn /norestart" -Wait

}

}

 

if ($uninstall32)

{

$uninstall32 = $uninstall32.UninstallString -Replace "msiexec.exe","" -Replace "/I","" -Replace "/X",""

Write-Output "Uninstalling..."

foreach ($item in $uninstall32)

{

    $msi = $item.Trim()

    start-process "msiexec.exe" -arg "/X $msi /qn /norestart" -Wait

}

}

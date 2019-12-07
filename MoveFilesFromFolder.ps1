#Variablendeklaration
$folder = Get-ChildItem -Directory
$main = Get-Location

#Hauptverarbeitung

foreach ($i in $ordner)
{
    $a = Get-Random
    $str = [string]$a 
    Rename-Item $i -NewName $str
}

#Variablendeklaration
$folder = Get-ChildItem -Directory

#Hauptverarbeitung

foreach ($i in $folder) 
{
    $a = Get-ChildItem $i
    Move-Item ($a.FullName) -Destination $main
    Remove-Item $i
}

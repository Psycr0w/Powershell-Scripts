#Variablendeklaration
$ordner = Get-ChildItem -Directory
$haupt = Get-Location

#Hauptverarbeitung

foreach ($i in $ordner)
{
    $a = Get-Random
    $str = [string]$a 
    Rename-Item $i -NewName $str
}

#Variablendeklaration
$ordner = Get-ChildItem -Directory

#Hauptverarbeitung

foreach ($i in $ordner) 
{
    $a = Get-ChildItem $i
    Move-Item ($a.FullName) -Destination $haupt
    Remove-Item $i
}

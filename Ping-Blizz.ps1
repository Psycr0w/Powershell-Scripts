$wow = 185.60.112.157, 185.60.112.158, 185.60.114.159
$hs = 185.60.112.157, 185.60.112.158
$d3 = 185.60.112.157, 185.60.112.158
$hots = 185.60.112.157, 185.60.112.158
$ow = 185.60.114.159, 185.60.112.157
$sc2 = 185.60.112.157, 185.60.112.158, 185.60.114.159

#Test-Connection -ComputerName $wow -Quiet

Write-Output "WoW"
Test-Connection -ComputerName 185.60.112.157, 185.60.112.158, 185.60.114.159 -Quiet -Count 2 -Delay 1

Write-Output "Hearthstone"
Test-Connection -ComputerName 185.60.112.157, 185.60.112.158 -Quiet -Count 2 -Delay 1

Write-Output "Diablo III"
Test-Connection -ComputerName 185.60.112.157, 185.60.112.158 -Quiet -Count 2 -Delay 1

Write-Output "Heroes of the Storm"
Test-Connection -ComputerName 185.60.112.157, 185.60.112.158 -Quiet -Count 2 -Delay 1

Write-Output "Overwatch"
Test-Connection -ComputerName 185.60.114.159, 185.60.112.157 -Quiet -Count 2 -Delay 1

Write-Output "Starcraft II"
Test-Connection -ComputerName 185.60.112.157, 185.60.112.158, 185.60.114.159 -Quiet -Count 2 -Delay 1
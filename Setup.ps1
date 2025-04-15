Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#Utilities
choco install foxitreader -y
choco install firefox -y
choco install 7zip.install -y
choco install notepadplusplus.install -y
choco install cccp -y
choco install mpc-be -y
choco install irfanview -y
choco install nextcloud-client -y
choco install dropbox -y
choco install windirstat -y
choco install sharex -y
choco install steelseries-engine -y
choco install filezilla -y
choco install winscp -y
choco install nextcloud-client -y
choco install localsend -y
choco install mobaxterm -y
choco install cheatengine -y
choco install putty -y
choco install rpi-imager -y
choco install razer-synapse-3 -y
choco install etcher -y

#Programming
choco install git -y
choco install vscode -y

#Organisation

#Gaming
choco install steam -y


#graphics
choco install geforce-game-ready-driver -y

#Comms
choco install webex -y
choco install discord -y
choco install mumble -yx

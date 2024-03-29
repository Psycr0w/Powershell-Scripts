Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#Utilities
choco install sumatrapdf.install -y
choco install firefox -y
choco install 7zip.install -y
choco install notepadplusplus.install -y
choco install cccp -y
choco install mpc-be -y
choco install irfanview -y
choco install mremoteng -y
choco install nextcloud-client -y
choco install curl -y
choco install dropbox -y
choco install windirstat -y
choco install greenshot -y
choco install steelseries-engine -y
choco install filezilla -y
choco install windirstat -y
choco install winscp -y
choco install tabby -y

#Programming
choco install git -y
choco install github-desktop -y
choco install visualstudio2019community -y
choco install vscode -y

#Organisation
choco install joplin -y
choco install cherrytree -y

#Gaming
choco install steam -y

#Requirements
choco install javaruntime -y

#graphics
choco install geforce-game-ready-driver -y

#Comms
choco install webex -y
choco install discord -y
choco install mumble -y

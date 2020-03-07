Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#Utilities
choco install sumatrapdf -y
choco install discord -y
choco install firefox -y
choco install 7zip.install -y
choco install notepadplusplus.install -y
choco install mumble -y
choco install cccp -y
choco install mpc-be -y
choco install irfanview -y
choco install mremoteng -y
choco install curl -y
choco install dropbox -y
choco install windirstat -y
choco install greenshot -y

#Programming
choco install git -y
choco install visualstudio2019community -y
choco install vscode -y

#Organisation
choco install joplin -y
choco install cherrytree -y

#Gaming
choco install steam -y

#Requirements
choco install javaruntime -y

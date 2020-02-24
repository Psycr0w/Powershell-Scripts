Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


#Utilities
choco install sumatrapdf
choco install discord
choco install firefox
choco install 7zip.install
choco install notepadplusplus.install
choco install mumble
choco install cccp
choco install mpc-be

#Programming
choco install git
choco install visualstudio2019community
choco install vscode

#Organisation
choco install joplin
choco install cherrytree

#Gaming
choco install steam
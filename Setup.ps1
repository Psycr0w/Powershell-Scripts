Set-ExecutionPolicy Bypass -Scope Process -Force
iex "& { $(irm https://community.chocolatey.org/install.ps1) }"

# Define packages
$utilities = @(
    'foxitreader', 'firefox', '7zip.install', 'notepadplusplus.install',
    'cccp', 'mpc-be', 'irfanview', 'nextcloud-client', 'dropbox',
    'windirstat', 'sharex', 'steelseries-engine', 'filezilla',
    'winscp', 'localsend', 'mobaxterm', 'cheatengine', 'putty',
    'rpi-imager', 'razer-synapse-3', 'etcher'
)

$programming = @('git', 'vscode')
$gaming = @('steam')
$graphics = @('geforce-game-ready-driver')
$comms = @('webex', 'discord', 'mumble')

$allPackages = $utilities + $programming + $gaming + $graphics + $comms

# Install loop with feedback
foreach ($pkg in $allPackages | Sort-Object -Unique) {
    Write-Host "Installing $pkg..." -ForegroundColor Cyan
    choco install $pkg -y --no-progress

    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Failed to install $pkg" -ForegroundColor Red
    } else {
        Write-Host "✅ Successfully installed $pkg" -ForegroundColor Green
    }
}

Write-Host "\n🎉 All installations attempted. Check above for any failures." -ForegroundColor Yellow

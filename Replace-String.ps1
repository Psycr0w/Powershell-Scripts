function Replace-String {

param
(
    [String]$File,
    [String]$Find,
    [String]$Replace

)
(gc -Path $File -Raw) -replace $Find,$Replace | Set-Content -Path $File -NoNewline
}
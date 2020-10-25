$listwowAddons =
"Classic",
"The Burning Crusade",
"Wrath of the Lich King",
"Cataclysm",
"Mists of Pandaris",
"Warlords of Draenor",
"Legion",
"Battle for Azeroth",
"Shadowlands"

[regex]$rx = '(?<=")\d+(?=":{"name_)'

for ($i=0; $i -lt $listwowAddons.Count; $i++)
{
    $index = $i + 1
    $a = Invoke-WebRequest "https://de.wowhead.com/items?filter=166;$index;0"

    $content = $a.RawContent
    $name = $listwowAddons[$i]
    $rx.Matches($content).Value | Out-File "$env:USERPROFILE\Documents\WarcraftItems\$name.txt"
}
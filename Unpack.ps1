$bg3_path = "${env:ProgramFiles(x86)}\Steam\SteamApps\content\app_1086940\depot_1419668\Data\"
$pak = Join-Path -Path $bg3_path -ChildPath "Localization\Japanese\Japanese.pak"

$today = Join-Path -Path $(Get-Location) -ChildPath $(Get-Date -UFormat "%Y-%m-%d")
Start-Process -FilePath "./Tools/divine.exe" -ArgumentList "-g bg3 -s `"$pak`" -d `"$today`" -a extract-package" -NoNewWindow -Wait

$loca = Join-Path -Path $today -ChildPath "Localization\Japanese\japanese.loca"
$xml = Join-Path -Path $today -ChildPath "Localization\Japanese\japanese.xml"
Start-Process -FilePath "./Tools/divine.exe" -ArgumentList "-g bg3 -s `"$loca`" -d `"$xml`" -a convert-loca" -NoNewWindow -Wait

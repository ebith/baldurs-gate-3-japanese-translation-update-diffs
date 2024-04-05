# Baldur's Gate 3 日本語訳の更新差分
日本語が実装されたのは[2023-12-21 Hotfix #15](https://store.steampowered.com/news/app/1086940/view/3878226811922849512)

## 参照
- [Patch Notes - Baldur's Gate 3 Wiki](https://bg3.wiki/wiki/Patch_Notes)
- [Depot 1419668 for Baldur's Gate 3 · SteamDB](https://steamdb.info/depot/1419668/manifests/)
- [Norbyte/lslib: Tools for manipulating Divinity Original Sin and Baldur's Gate 3 files](https://github.com/Norbyte/lslib)

## 作業メモ
1. `Win+R` => `steam://nav/console`
2. `download_depot 1086940 1419668 {ManifestID}`
3. run `Unpack.ps1`
4. `git diff {previous}\Localization\Japanese\japanese.xml {today}/Localization\Japanese\japanese.xml > diff`

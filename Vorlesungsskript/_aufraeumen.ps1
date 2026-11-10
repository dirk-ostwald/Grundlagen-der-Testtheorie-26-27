$texFile = Join-Path $PSScriptRoot 'Grundlagen-der-Testtheorie-2027.tex'
if (Test-Path -LiteralPath $texFile) {
    Remove-Item -LiteralPath $texFile
}

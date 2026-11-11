$texFile = Join-Path $PSScriptRoot 'Grundlagen-der-Testtheorie-2027.tex'
if (Test-Path -LiteralPath $texFile) {
    Remove-Item -LiteralPath $texFile
}

# Avoid Quarto relocating resources through the external _src junction.
# Only the finished PDF belongs in _book.
$pdfFile = Join-Path $PSScriptRoot 'Grundlagen-der-Testtheorie-2027.pdf'
$outputDirectory = Join-Path $PSScriptRoot '_book'
if (Test-Path -LiteralPath $pdfFile) {
    New-Item -ItemType Directory -Path $outputDirectory -Force | Out-Null
    Move-Item -LiteralPath $pdfFile -Destination (Join-Path $outputDirectory 'Grundlagen-der-Testtheorie-2027.pdf') -Force
}
$ErrorActionPreference = "Stop"

Set-Location $PSScriptRoot

# Force Jekyll/ImageMagick plugin to use our wrapper before Windows System32 convert.exe
$env:Path = "$PSScriptRoot\tools;$env:Path"

Write-Host "Using convert from:"
where.exe convert

Write-Host "ImageMagick version:"
convert -version

bundle exec jekyll clean
bundle exec jekyll serve --livereload
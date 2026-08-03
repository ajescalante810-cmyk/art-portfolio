# Interactive tool to add a new artwork to the Jekyll site.
# Run from anywhere: powershell -File scripts\add-artwork.ps1

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$imagesDir = Join-Path $repoRoot "assets\images"
$galleryDir = Join-Path $repoRoot "_gallery"

function Get-Slug($text) {
    $slug = $text.ToLower()
    $slug = $slug -replace "['’‘]", ""
    $slug = $slug -replace "[^a-z0-9]+", "-"
    $slug = $slug.Trim('-')
    return $slug
}

function Esc($s) {
    return $s -replace '"', '\"'
}

Write-Host "=== Add New Artwork ===" -ForegroundColor Cyan
Write-Host ""

$sourceImage = Read-Host "Path to the image file"
$sourceImage = $sourceImage.Trim('"')
if (-not (Test-Path $sourceImage)) {
    Write-Host "File not found: $sourceImage" -ForegroundColor Red
    exit 1
}

$title = Read-Host "Title"
$year = Read-Host "Year"
$medium = Read-Host "Medium (press Enter for `"Oil on canvas`")"
if ([string]::IsNullOrWhiteSpace($medium)) { $medium = "Oil on canvas" }
$dimensions = Read-Host "Dimensions (e.g. 24 x 24 inches)"
$price = Read-Host "Price (e.g. Unavailable / Sold / For inquiries, contact the artist / a dollar amount)"
$note = Read-Host "Optional note/context (press Enter to skip)"

if ([string]::IsNullOrWhiteSpace($title)) {
    Write-Host "Title is required." -ForegroundColor Red
    exit 1
}

$slug = Get-Slug $title
$extension = [System.IO.Path]::GetExtension($sourceImage)
$imageFileName = "$slug-$year$extension"
$destImage = Join-Path $imagesDir $imageFileName
$galleryFile = Join-Path $galleryDir "$slug.md"

if (Test-Path $destImage) {
    Write-Host "A file already exists at $destImage — aborting to avoid overwriting." -ForegroundColor Red
    exit 1
}
if (Test-Path $galleryFile) {
    Write-Host "A gallery entry already exists at $galleryFile — aborting to avoid overwriting." -ForegroundColor Red
    exit 1
}

# Determine next order number
$maxOrder = 0
Get-ChildItem $galleryDir -Filter "*.md" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    if ($content -match "order:\s*(\d+)") {
        $orderNum = [int]$matches[1]
        if ($orderNum -gt $maxOrder) { $maxOrder = $orderNum }
    }
}
$nextOrder = $maxOrder + 1

# Copy image into place
Copy-Item $sourceImage $destImage
Write-Host "Copied image to $destImage" -ForegroundColor Green

# Build a description for SEO
$descParts = @("$title, $year.", "$medium, $dimensions.")
if (-not [string]::IsNullOrWhiteSpace($note)) {
    $descParts += "$note."
}
$descParts += "An original painting by Alexander (AJ) Escalante."
$description = $descParts -join " "

$noteLine = ""
if (-not [string]::IsNullOrWhiteSpace($note)) {
    $noteLine = "note: `"$(Esc $note)`"`n"
}

$frontMatter = @"
---
layout: portfolio-piece
title: "$(Esc $title)"
${noteLine}year: "$year"
medium: "$(Esc $medium)"
dimensions: "$(Esc $dimensions)"
price: "$(Esc $price)"
order: $nextOrder
description: "$(Esc $description)"
header:
  teaser: /assets/images/$imageFileName
---
"@

Set-Content -Path $galleryFile -Value $frontMatter -Encoding utf8

Write-Host ""
Write-Host "Created $galleryFile" -ForegroundColor Green
Write-Host "  Slug:  $slug"
Write-Host "  Order: $nextOrder"
Write-Host "  Image: $imageFileName"
Write-Host ""
Write-Host "Run 'bundle exec jekyll serve' from the repo root to preview locally." -ForegroundColor Cyan

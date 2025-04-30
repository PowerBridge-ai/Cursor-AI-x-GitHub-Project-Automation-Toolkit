# PowerShell Script to Update File Signatures
# Adds or moves the PowerBridge.AI signature to the bottom of files

$signature = "`n`n---`n`nMade with Power, Love, and AI •  ⚡️❤️🤖 •  POWERBRIDGE.AI"

function Update-FileSignature {
    param (
        [string]$filePath
    )
    
    try {
        # Read file content
        $content = Get-Content -Path $filePath -Raw
        if ($null -eq $content) { $content = "" }
        
        # Remove existing signatures
        $pattern = [regex]::Escape($signature)
        $content = $content -replace "(?ms)$pattern", ""
        
        # Add signature at the end
        $content = $content.TrimEnd() + $signature
        
        # Write updated content back to file
        Set-Content -Path $filePath -Value $content -NoNewline
        Write-Host "Updated signature in: $filePath"
    }
    catch {
        Write-Error "Failed to update signature in $filePath : $_"
    }
}

# Get script directory path
$scriptPath = $PSScriptRoot
$toolkitRoot = Split-Path (Split-Path $scriptPath -Parent) -Parent

# Get all relevant files recursively
$files = Get-ChildItem -Path $toolkitRoot -Recurse |
    Where-Object { $_.Extension -match "\.(md|ps1|ts|js|py|sh)$" }

foreach ($file in $files) {
    Update-FileSignature -filePath $file.FullName
}

Write-Host "Signature update complete!"

# Made with Power, Love, and AI •  ⚡️❤️🤖 •  POWERBRIDGE.AI


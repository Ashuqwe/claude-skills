# install.ps1 — Install Claude Code skills to ~\.claude\commands\ (Windows)
# Run in PowerShell: .\install.ps1 [skill-name|all]

param (
    [string]$Skill = ""
)

$SkillsDir = Join-Path $PSScriptRoot "skills"
$TargetDir = Join-Path $env:USERPROFILE ".claude\commands"

function Print-Usage {
    Write-Host "Usage: .\install.ps1 [skill-name|all]"
    Write-Host ""
    Write-Host "Available skills:"
    Get-ChildItem -Path $SkillsDir -Directory | ForEach-Object {
        Write-Host "  - $($_.Name)"
    }
    Write-Host ""
    Write-Host "Examples:"
    Write-Host "  .\install.ps1 all"
    Write-Host "  .\install.ps1 feature-story"
}

function Install-Skill {
    param ([string]$SkillName)

    $SkillDir = Join-Path $SkillsDir $SkillName

    if (-not (Test-Path $SkillDir)) {
        Write-Host "Error: skill '$SkillName' not found in $SkillsDir"
        exit 1
    }

    if (-not (Test-Path $TargetDir)) {
        New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
    }

    # Copy all .md files recursively except the skill's own README
    Get-ChildItem -Path $SkillDir -Filter "*.md" -Recurse | Where-Object { $_.Name -ne "README.md" } | ForEach-Object {
        # Get relative path from SkillDir
        $relPath = $_.FullName.Substring($SkillDir.Length + 1)
        $targetFile = Join-Path $TargetDir $relPath
        $targetDir = Split-Path $targetFile -Parent
        if (-not (Test-Path $targetDir)) {
            New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
        }
        Copy-Item $_.FullName -Destination $targetFile -Force
        Write-Host "  Installed: $relPath -> $targetDir\"
    }

    Write-Host "  Done: $SkillName"
}

# No args — show usage
if ($Skill -eq "") {
    Print-Usage
    exit 0
}

Write-Host "Installing to: $TargetDir"
Write-Host ""

if ($Skill -eq "all") {
    Get-ChildItem -Path $SkillsDir -Directory | ForEach-Object {
        Write-Host "[ $($_.Name) ]"
        Install-Skill $_.Name
        Write-Host ""
    }
} else {
    Write-Host "[ $Skill ]"
    Install-Skill $Skill
    Write-Host ""
}

Write-Host "Installation complete. Restart Claude Code to pick up new skills."

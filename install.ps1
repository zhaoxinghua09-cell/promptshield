# install.ps1 — PromptShield one-click installer (Windows)
# Copies the collection into an agent skills directory. Safe: read-only source, target only.
# Usage:  powershell -ExecutionPolicy Bypass -File install.ps1 [-Target "$HOME\.claude\skills\promptshield"]
param(
  [string]$Target = "$HOME\.claude\skills\promptshield"
)
$ErrorActionPreference = "Stop"
$src = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "PromptShield installer"
Write-Host "  source : $src"
Write-Host "  target : $Target"
New-Item -ItemType Directory -Force -Path $Target | Out-Null
# copy orchestration files only (SKILL.md, README, scripts, shims) — never touches sub-package sources
Copy-Item -Path (Join-Path $src "SKILL.md")      -Destination $Target -Force
Copy-Item -Path (Join-Path $src "README.md")     -Destination $Target -Force
Copy-Item -Path (Join-Path $src "scripts")      -Destination $Target -Recurse -Force
Copy-Item -Path (Join-Path $src ".claude-plugin") -Destination $Target -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item -Path (Join-Path $src ".codex-plugin")  -Destination $Target -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item -Path (Join-Path $src ".cursor-plugin") -Destination $Target -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "done. verify: python3 $Target\scripts\promptshield_flow.py --list"

$ErrorActionPreference = "Stop"

$HostName = "com.dlp.agent"
$InstallRoot = Join-Path $env:LOCALAPPDATA "DlpAgent"

Write-Host ""
Write-Host "=== DLP Agent Uninstaller ==="
Write-Host ""

reg delete "HKCU\Software\Google\Chrome\NativeMessagingHosts\$HostName" /f | Out-Null

if (Test-Path $InstallRoot) {
    Remove-Item $InstallRoot -Recurse -Force
}

Write-Host "Uninstall completed."
Write-Host ""
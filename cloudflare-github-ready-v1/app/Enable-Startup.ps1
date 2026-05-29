Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$startup = [Environment]::GetFolderPath('Startup')
$shortcutPath = Join-Path $startup 'DesktopCalendarFloat.lnk'
$target = Join-Path $PSScriptRoot 'Start-DesktopCalendar.cmd'

if (-not (Test-Path -LiteralPath $target)) {
    throw "找不到启动脚本：$target"
}

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $target
$shortcut.WorkingDirectory = $PSScriptRoot
$shortcut.Description = '桌面日历浮窗'
$shortcut.Save()

Write-Host "已启用开机自启动：$shortcutPath"

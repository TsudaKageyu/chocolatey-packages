$ErrorActionPreference = 'Stop'; # stop on all errors

$file = (Get-ItemProperty `
  -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0870F25F-0A0A-4614-A1AD-7477C248502E}_is1").UninstallString

$packageArgs = @{
  packageName    = 'xrecode3'
  fileType       = 'EXE'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  file           = $file
  validExitCodes = @(0)
}

Uninstall-ChocolateyPackage @packageArgs

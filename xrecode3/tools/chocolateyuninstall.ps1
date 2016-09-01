$ErrorActionPreference = 'Stop';

if (Get-ProcessorBits -eq 64) {
  $registryKey = '{0870F25F-0A0A-4614-A1AD-7477C248502E}_is1'
} else {
  $registryKey = '{9E725299-47B7-4B43-8233-37DD430932E4}_is1'
}
$file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryKey").UninstallString
$file = $file -Replace '"', ''

$packageArgs = @{
  packageName    = 'xrecode3'
  fileType       = 'EXE'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  file           = $file
  validExitCodes = @(0)
}

Uninstall-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'; # stop on all errors

$registryKey = '{537B7F85-2B95-44ED-8D90-765F6F36D666}'
$msiDir = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryKey").InstallSource

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'MSI'
  silentArgs     = "`"$msiDir$registryKey.msi`" /quiet"   # MSI file name is here to get around choco's bug.
  file           = ''                                     # This will be ignored.
  validExitCodes = @(0, 3010)
}

Uninstall-ChocolateyPackage @packageArgs

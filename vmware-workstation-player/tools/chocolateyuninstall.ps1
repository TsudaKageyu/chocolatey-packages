$ErrorActionPreference = 'Stop';

$registryKey = '{6D211A09-EB2A-4B83-ACCB-13B1BC12AF4E}'
$msiDir = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryKey").InstallSource

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'MSI'
  silentArgs     = "`"$msiDir$registryKey.msi`" /quiet"   # MSI file name is here to get around choco's bug.
  file           = ''                                     # This will be ignored.
  validExitCodes= @(0, 3010, 1641)
}

Uninstall-ChocolateyPackage @packageArgs

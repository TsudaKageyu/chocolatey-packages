$ErrorActionPreference = 'Stop';

$registryKey = '{646FD2AF-74E5-462C-82EE-1860DD252BF6}'
$msiDir = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryKey").InstallSource

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'MSI'
  silentArgs     = "`"$msiDir$registryKey.msi`" /quiet"   # MSI file name is here to get around choco's bug.
  file           = ''                                     # This will be ignored.
  validExitCodes= @(0, 3010, 1641)
}

Uninstall-ChocolateyPackage @packageArgs

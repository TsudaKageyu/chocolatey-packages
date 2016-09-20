$ErrorActionPreference = 'Stop';

$registryKey = '{BC00AC33-2B00-443D-8FC2-3656D94AEA0A}'
$msiDir = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryKey").InstallSource

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'MSI'
  silentArgs     = "`"$msiDir$registryKey.msi`" /quiet"   # MSI file name is here to get around choco's bug.
  file           = ''                                     # This will be ignored.
  validExitCodes= @(0, 3010, 1641)
}

Uninstall-ChocolateyPackage @packageArgs

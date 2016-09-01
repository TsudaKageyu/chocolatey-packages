$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'https://download3.vmware.com/software/player/file/VMware-player-12.1.1-3770994.exe'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = 'D63E0D2B95E1BA23AFD1A9D04137B0FF8EA58CFC'
  checksumType64 = 'sha1'
  silentArgs     = "/s /v/qn EULAS_AGREED=1"
  validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'http://www.vmware.com/go/tryplayerpro-win-64'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = 'D63E0D2B95E1BA23AFD1A9D04137B0FF8EA58CFC'
  checksumType64 = 'sha1'
  silentArgs     = "/s /v/qn EULAS_AGREED=1"
  validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
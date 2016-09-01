$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'https://download3.vmware.com/software/player/file/VMware-player-12.1.1-3770994.exe'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = '1CD93C067785D80D347F4479826F9399DD713573EC04659F74477917E605BFD1'
  checksumType64 = 'sha256'
  silentArgs     = "/s /v/qn EULAS_AGREED=1"
  validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
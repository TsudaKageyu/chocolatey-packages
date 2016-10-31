$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'https://download3.vmware.com/software/player/file/VMware-player-12.5.1-4542065.exe'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = 'A1B23961CED2D4660997DD6A12DE6E5034C14E03F248ADBD0C4ED89BB9177110'
  checksumType64 = 'sha256'
  silentArgs     = '/s /v"/qn" EULAS_AGREED=1'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

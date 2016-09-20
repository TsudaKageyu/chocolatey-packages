$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'https://download3.vmware.com/software/player/file/VMware-player-12.5.0-4352439.exe'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = 'A88E8E39308EF0C2D0B1DB27B04F1AA40726CBCCBB5AD5120D6DF9FC01609FF5'
  checksumType64 = 'sha256'
  silentArgs     = '/s /v"/qn" EULAS_AGREED=1'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

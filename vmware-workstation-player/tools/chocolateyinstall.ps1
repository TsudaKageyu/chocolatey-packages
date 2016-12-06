$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'https://download3.vmware.com/software/player/file/VMware-player-12.5.2-4638234.exe'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = '6F1109D3A20CA73C8EF74A229401CF5633618827FCB819DC82556A12BA34AE80'
  checksumType64 = 'sha256'
  silentArgs     = '/s /v"/qn" EULAS_AGREED=1'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

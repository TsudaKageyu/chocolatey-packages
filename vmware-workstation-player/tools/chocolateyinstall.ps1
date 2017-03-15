$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'vmware-workstation-player'
  fileType       = 'EXE'
  url64bit       = 'https://download3.vmware.com/software/player/file/VMware-player-12.5.4-5192485.exe'
  softwareName   = 'vmware-workstation-player*'
  checksum64     = '957D4444ED8ABAC892BB52B453FE5A418F513FE58B5CFE120146CCC5634B4B1B'
  checksumType64 = 'sha256'
  silentArgs     = '/s /v"/qn" EULAS_AGREED=1'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'icaros'
  fileType       = 'EXE'
  url            = 'http://files2.majorgeeks.com/e0ec4ca047662253f6d21b908c771c1a/multimedia/Icaros_v3.0.0.exe'
  softwareName   = 'icaros*'
  checksum       = 'A6C4824197EE4BE85F6D99DD3EDEC163104F30999C96AB4550794833E5523B5A'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

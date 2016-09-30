$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.38.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.38.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = 'E85600F0CDC5D2EFA1A70CAF013CCE4EB107BE4E9E10324084D6FFBE35AB507E'
  checksumType   = 'sha256'
  checksum64     = 'B151094FFCD73DEE9B19FCAB8DB20F521F88A3EB500982165222FCCB8D8F9A92'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

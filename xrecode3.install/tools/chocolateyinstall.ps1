$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.41.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.41.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = '16D350E5221782788F408227E5979A05BFA29FC145C26B4F582C2DBDE9A0D3AF'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

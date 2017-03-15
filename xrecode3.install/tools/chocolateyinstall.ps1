$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.54.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.54.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = '583CF9D42B21B765B26896103487EC6E8E2A434ED33DD5AB94DD9D8A929FA10C'
  checksumType   = 'sha256'
  checksum64     = '769AE9858F4C422C28EBA1E9CA604AF3ADA79E029389E045DC09651512CE432B'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

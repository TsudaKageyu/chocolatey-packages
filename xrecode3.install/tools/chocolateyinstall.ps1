$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.44.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.44.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = 'B3CCAC65BEC36FF3183E5866F41E117D479C432011B1919237D3F851AD3CF8DF'
  checksumType   = 'sha256'
  checksum64     = 'CC6C667864DD5963E7C0E74B013398A9EADD08B8EE6FC143707D6C2815036634'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

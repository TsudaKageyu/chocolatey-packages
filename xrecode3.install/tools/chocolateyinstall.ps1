$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.39.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.39.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = '3CF8D5C770BF4A9B44CD9AFD1315E54C160083DAC40F0F674CDD6AED76D75E77'
  checksumType   = 'sha256'
  checksum64     = '75C5EFE6FFB847BB6369DD925DF25DA2C84843770B93024928227006CB00116A'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

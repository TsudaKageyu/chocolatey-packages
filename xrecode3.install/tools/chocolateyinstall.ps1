$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.36.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.36.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = '99543FF6D7034D231B5A32A9FEFF336C9A1E007E5160048792C9482391E8E29B'
  checksumType   = 'sha256'
  checksum64     = '34B038E5A183D22CE5E6F3419D2CCC1AA03F3A6625CC89839E36DE1CF2B651F9'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.44_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.44_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = 'CE3B931ABFC13577465EE7650779AE3CA04F8AAEC042659D65419B60277ADC84'
  checksumType   = 'sha256'
  checksum64     = '7F6A9EBA8305D054A9F60CF31F073929C0828D6140C0D33FCFC2A415B6B22775'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.54_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.54_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = '2213D90DDCD6BE54E96FFF548EBA4669D7CE898CBC4B5CE46DF0A04D0EDF59EC'
  checksumType   = 'sha256'
  checksum64     = '681498AE7565FF7A0894003334AC52A16E4A2994F2D5B030C3162E9EE38AE021'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

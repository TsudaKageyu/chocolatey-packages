$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.36_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.36_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = '035E0C7F3C80A3BA83AA502C2617ED882B741D7BEA30637D7BAE95FC63AC1F2A'
  checksumType   = 'sha256'
  checksum64     = '09E45C890EBDC08D11A75A60DBAF11FF3C0430D001759F0B4661FBE6BFEA26B0'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

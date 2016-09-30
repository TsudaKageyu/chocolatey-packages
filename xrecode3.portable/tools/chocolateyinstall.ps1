$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.38_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.38_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = '1B460E25B80C5834F18E395AA593E11FC984B50B209420E865C68248F69D0980'
  checksumType   = 'sha256'
  checksum64     = '2B956FC08D83DAEFADAE9A3DD53DFFD6C2486F8C046584678E8FBD340A165F19'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

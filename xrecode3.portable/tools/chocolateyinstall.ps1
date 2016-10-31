$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.41_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.41_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = 'A29B26FC6F6DCDE1CB375FE28C490366D7641BD65F076E7FE0FB633928FBF8C7'
  checksumType   = 'sha256'
  checksum64     = '6266BA7E94CD6FB8BBC2EE15E7FA2B62838F7A6D847464FF833D5AE3F8035424'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

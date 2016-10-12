$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.39_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.39_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = 'A3010C59CA5C36D0C6903DC3BE80374A8A6D40EC4A028656B1FD04661785FAE8'
  checksumType   = 'sha256'
  checksum64     = '4CD4365B48B76999C9B740CCC1F22AAFE4AA91DF78EE521B3C721307A6F5F652'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

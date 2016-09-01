$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.portable'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.35_portable.7z'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.35_portable.7z'
  softwareName   = 'xrecode3.portable*'
  checksum       = 'F1A253DBDE831DE27E55A4468D18FC887896E347E95A5360D708F6FF9B3A3476'
  checksumType   = 'sha256'
  checksum64     = 'ADB2BC318400B6E073893976C972B3ED5BD43DAE9B64C6C8CFBB9BB5C9D955C6'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs

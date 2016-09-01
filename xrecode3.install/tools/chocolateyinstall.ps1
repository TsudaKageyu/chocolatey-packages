$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xrecode3.install'
  fileType       = 'EXE'
  url            = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_32bit_1.35.exe'
  url64bit       = 'http://xrecode.com/xrecode3/download/setup_xrecode3_win_64bit_1.35.exe'
  softwareName   = 'xrecode3.install*'
  checksum       = '5DD3AEF92D9606E244350D3007FA161F453B4DB59D1D1025B80533B48A8C38C3'
  checksumType   = 'sha256'
  checksum64     = '1345FD7FD396A98429945BA7336A985EA58167E2CF467EBC065EC6DD640E1DAB'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

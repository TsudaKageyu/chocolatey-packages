@echo off
del *.nupkg
choco pack .\vmware-workstation-player\vmware-workstation-player.nuspec
choco pack .\xrecode3\xrecode3.nuspec
choco pack .\xrecode3.install\xrecode3.install.nuspec
choco pack .\xrecode3.portable\xrecode3.portable.nuspec

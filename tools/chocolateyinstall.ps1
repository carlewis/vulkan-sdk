$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = "https://sdk.lunarg.com/sdk/download/$($env:ChocolateyPackageVersion)/windows/VulkanSDK-$($env:ChocolateyPackageVersion)-Installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'VulkanSDK*'
  checksum      = 'ee86f25580b550390ce46508415e744d62e87e9c0de6cd299998058253a2a4ba'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
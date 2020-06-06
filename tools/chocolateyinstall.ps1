$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = "https://sdk.lunarg.com/sdk/download/$($env:ChocolateyPackageVersion)/windows/VulkanSDK-$($env:ChocolateyPackageVersion)-Installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'VulkanSDK*'
  checksum      = '0375a6a31a65d8c17b0f817835aed6cdc651783a24c37b51f8ca76cc33e37579'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = "https://sdk.lunarg.com/sdk/download/$($env:ChocolateyPackageVersion)/windows/VulkanSDK-$($env:ChocolateyPackageVersion)-Installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'VulkanSDK*'
  checksum      = 'b64471f3a720e649c1fae6535ea83b8c642655ebed1485bfdf15bf4d88f746d9'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
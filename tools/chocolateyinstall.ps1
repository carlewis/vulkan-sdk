$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = "https://sdk.lunarg.com/sdk/download/$($env:ChocolateyPackageVersion)/windows/VulkanSDK-$($env:ChocolateyPackageVersion)-Installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'VulkanSDK*'
  checksum      = '181b3353612c8b0fc5e1857b652d62140191ae42b98f2f0d532cf349cebfd8c6'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
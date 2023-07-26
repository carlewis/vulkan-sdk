$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = "https://sdk.lunarg.com/sdk/download/1.$($env:ChocolateyPackageVersion)/windows/VulkanSDK-1.$($env:ChocolateyPackageVersion)-Installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'VulkanSDK*'
  checksum      = 'fab945cdae8ab5d8f983ff9cda39d80cfe7ab644660e577e977566dd73380785'
  checksumType  = 'sha256'
  silentArgs    = "--accept-licenses --default-answer --confirm-command install"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'ewseditor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=ewseditor&DownloadId=1646373&FileTime=131340889353370000&Build=21053'
$installDir = "c:\tools\EwsEditor\";

$packageArgs = @{
  packageName   = $packageName
  url           = $url
  unzipLocation = $installDir
  checksum      = 'F2C2E9A5199E940D724CFD94B3528D4D3E53CA875F98697C660AF8CA20E88A02'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'ewseditor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/dseph/EwsEditor/releases/download/1.19/EWSEditor.1.19.-.Bin.zip'
$installDir = "c:\tools\EwsEditor\";

$packageArgs = @{
  packageName   = $packageName
  url           = $url
  unzipLocation = $installDir
  checksum      = '56EC5806B38FC39FCC10DE84C876E7A64550C5C2E900EDB3FC353F7A17332782'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

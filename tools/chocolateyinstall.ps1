$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName= 'ewseditor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/dseph/EwsEditor/files/1989889/EwsEditor.1.20.-.bin.zip'
$installDir = "c:\tools\EwsEditor\";

$packageArgs = @{
  packageName   = $packageName
  url           = $url
  unzipLocation = $installDir
  checksum      = '9FC5842FA372B8A6F4386C9BD31390C8D4B116AB3AEA68E4DA1DD3B479AF82E5'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

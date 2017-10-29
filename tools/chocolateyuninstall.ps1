$ErrorActionPreference = 'Stop';

$packageName = 'ewseditor'
$softwareName = 'ewseditor*'

$installDir = "c:\tools\EwsEditor\";

Remove-Item $installDir -Recurse;
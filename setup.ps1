Import-Module Boxstarter.Chocolatey

$BoxName = "DevBox"
$BoxScript = "$BoxName.BoxStarter.ps1"

New-PackageFromScript -Source "$BoxScript" -PackageName "$BoxName"
Invoke-BoxstarterBuild "$BoxName"

$credential = Get-Credential Administrator
Install-BoxstarterPackage -PackageName "$BoxName" -Credential $credential

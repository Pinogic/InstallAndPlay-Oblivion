Write-Host "### InstallAndPlay Oblivion"
Write-Host ""
Write-Host "Dou you want to Install this fix? If not simple close this window."
Write-Host ""
pause

$oblivion = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 22330" -Name InstallLocation).InstallLocation

Copy-Item -Path "userprofile\*" -Destination "$env:USERPROFILE" -Recurse -Force
Copy-Item -Path "Oblivion\*" -Destination "$oblivion" -Recurse -Force

(Get-Item "$oblivion\Data\Oblivion.esm").LastWriteTime = "01/01/2006 00:00:00"
(Get-Item "$oblivion\Data\Unofficial Oblivion Patch.esp").LastWriteTime = "01/02/2006 00:00:00"
(Get-Item "$oblivion\Data\Oblivion Citadel Door Fix.esp").LastWriteTime = "01/03/2006 00:00:00"
(Get-Item "$oblivion\Data\UOP Vampire Aging & Face Fix.esp").LastWriteTime = "01/04/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCShiveringIsles.esp").LastWriteTime = "01/05/2006 00:00:00"
(Get-Item "$oblivion\Data\Unofficial Shivering Isles Patch.esp").LastWriteTime = "01/06/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCHorseArmor.esp").LastWriteTime = "01/07/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCHorseArmor - Unofficial Patch.esp").LastWriteTime = "01/08/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCOrrery.esp").LastWriteTime = "01/09/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCOrrery - Unofficial Patch.esp").LastWriteTime = "01/10/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCFrostcrag.esp").LastWriteTime = "01/11/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCFrostcrag - Unofficial Patch.esp").LastWriteTime = "01/12/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCThievesDen.esp").LastWriteTime = "01/13/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCThievesDen - Unofficial Patch.esp").LastWriteTime = "01/14/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCThievesDen - Unofficial Patch - SSSB.esp").LastWriteTime = "01/15/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCMehrunesRazor.esp").LastWriteTime = "01/16/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCMehrunesRazor - Unofficial Patch.esp").LastWriteTime = "01/17/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCVileLair.esp").LastWriteTime = "01/18/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCVileLair - Unofficial Patch.esp").LastWriteTime = "01/19/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCSpellTomes.esp").LastWriteTime = "01/20/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCSpellTomes - Unofficial Patch.esp").LastWriteTime = "01/21/2006 00:00:00"
(Get-Item "$oblivion\Data\Knights.esp").LastWriteTime = "01/22/2006 00:00:00"
(Get-Item "$oblivion\Data\Knights - Unofficial Patch.esp").LastWriteTime = "01/23/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCBattlehornCastle.esp").LastWriteTime = "01/24/2006 00:00:00"
(Get-Item "$oblivion\Data\DLCBattlehornCastle - Unofficial Patch.esp").LastWriteTime = "01/25/2006 00:00:00"

Write-Host ""
Write-Host "No red error messages seen? Then it's done."
Write-Host ""
pause
#
#Win10 App Restore.ps1
#Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

function Show-Menu
{
	cls
	Write-Host "===============Restore All UWP Applications==============="
	Write-Host "Proceed? App Data May be Lost.[Y]/[N]"
}

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
			'Y' {
                cls
                'Preparing to restore'
				sleep 2
				Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
           } 'Yes' {
                cls
                'Preparing to restore'
				sleep 2
				Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
           } 'N' {
                cls
                return
           } 'No' {
               cls 
			   return
           }
     }
     pause
}
until ($input -eq 'q')

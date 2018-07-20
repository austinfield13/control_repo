<#

.SYNOPSIS
    This script initializes WSUS Configuration for the NSDC program.

.DESCRIPTION
    The systems on the Galaxy Net, which is the NSDC's PLN or development
    network, must have correct WSUS configuration in order for the systems to
    operate. This PowerShell script sets these values in the registry on the PC for the Galaxy network.

.INPUTS
    None.

.OUTPUTS
    None.

.NOTES
    Author: Austin Field
            austin.field@ngc.com
            (719) 393-8372
    Version: 1.0
    Creation Date: 7/19/2018

.EXAMPLE
    PowerShell.exe -ExecutionPolicy Remote-Signed -File Activate-GalaxyNet.ps1
#>

# Get the ID and security principal of the current user account
$myWindowsID = [System.Security.Principal.WindowsIdentity]::GetCurrent();
$myWindowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($myWindowsID);

# Get the security principal for the administrator role
$adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator;

# Check to see if we are currently running as an administrator
if ($myWindowsPrincipal.IsInRole($adminRole)) {

  Write-Host 'Stopping wuauserv'
  net stop wuauserv;

  Write-Host 'Importing WSUS.reg'
  Regedit.exe /s .\wsus_mng_iso.reg

  Write-Host 'Starting wuauserv'
  net start wuauserv

  Write-Host 'Forcing update detection'
  Invoke-Command -Script {wuauclt /resetauthorization /detectnow /reportnow /showsettingsdialog}

}


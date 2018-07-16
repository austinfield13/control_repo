class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd S:\galaxy\wsus | Start-Process wsus_mng_iso.bat",
    unless       => 'if ((Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -Name "WUServer") -eq "http://10.129.17.5") {exit 0} else {exit 1}',
    provider     => powershell,
    
  }

}

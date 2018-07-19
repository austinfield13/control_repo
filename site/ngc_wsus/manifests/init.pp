class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "Start-Process 'S:\galaxy\wsus\wsus_mng_iso.bat'",
    onlyif       => "Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | Select-Object -property WUServer | Where-Object -property WUServer -ne 'http://10.129.17.5'",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}

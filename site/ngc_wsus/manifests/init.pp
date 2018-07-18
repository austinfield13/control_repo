class ngc_wsus {

  exec{"Execute batch file":
    
    command      => 'powershell -executionpolicy remotesigned -file S:\galaxy\wsus\wsus_mng_iso.bat',
    onlyif       => "(Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -Name 'WUServer') -ne 'http://10.129.17.5'",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}

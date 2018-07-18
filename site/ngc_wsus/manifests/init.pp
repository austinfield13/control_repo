class ngc_wsus {

  exec{"Execute batch file":
    
    command      => Start-Process 'S:\galaxy\wsus\wsus_mng_iso.bat',
    onlyif       => "Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | Select-String -Pattern 'http://10.129.17.5'",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}

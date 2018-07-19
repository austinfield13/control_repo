class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd C:\opt\ | .\wsus.ps1",
    onlyif       => "REG QUERY HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /v WUServer",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}

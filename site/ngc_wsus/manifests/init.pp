class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd C:\opt\ | .\wsus.ps1",
    onlyif       => "if((REG QUERY HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /v WUServer)-eq 'http://10.129.17.5'){Write '0'}else{Write '1'}",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}

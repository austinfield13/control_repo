class ngc_wsus {

  exec{"Execute batch file":
    
    command      => '& C:\opt\wsus.ps1',
    onlyif       => '(REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /f WUServer) -match http://10.129.17.5',
    provider     => powershell,
    logoutput    => true,
    
  }

}

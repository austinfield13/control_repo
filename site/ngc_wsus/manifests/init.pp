class ngc_wsus {

  exec{"Execute batch file":
    
    command      => '& C:\opt\wsus.ps1',
    onlyif       => 'if((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /f WUServer) -match http://10.129.17.5){exit 0}',
    provider     => powershell,
    logoutput    => true,
    
  }

}

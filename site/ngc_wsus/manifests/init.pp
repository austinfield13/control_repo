class ngc_wsus {

  exec{"Execute batch file":
    
    command      => '& C:\opt\wsus.ps1',
    onlyif       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /f WUServer) -like "WUServer" -split "\s+",3)[2] -ne "http://10.129.17.5"){ Exit 1 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
    
  }

}

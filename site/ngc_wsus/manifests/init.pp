class ngc_wsus {

  exec{"Execute WSUS Configuration":
    
    command      => '& C:\opt\wsus.ps1',
    unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /f WUServer) -split "\s+",5)[5] -ne "http://10.129.17.5"){ Exit 1 }else{ Exit 0 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
    
  }

}

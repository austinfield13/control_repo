class ngc_wsus {

  exec{"Execute WUServer Configuration":
    
    command      => '& C:\opt\wsus.ps1',
    unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /f WUServer) -split "\s+",5)[5] -ne "http://10.129.17.5"){ Exit 1 }else{ Exit 0 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,  
  }
  
  exec{"Execute WUStatusServer Configuration":
    
    command      => '& C:\opt\wsus.ps1',
    unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ /f WUStatusServer) -split "\s+",5)[5] -ne "http://10.129.17.5"){ Exit 1 }else{ Exit 0 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
  }
    
  exec{"Execute NoAutoUpdate Configuration":
    
    command      => '& C:\opt\wsus.ps1',
    unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f NoAutoUpdate) -split "\s+",5)[5] -ne "0x0"){ Exit 1 }else{ Exit 0 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
  }
    
  exec{"Execute AUOptions Configuration":
    
    command      => '& C:\opt\wsus.ps1',
    unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f AUOptions) -split "\s+",5)[5] -ne "0x3"){ Exit 1 }else{ Exit 0 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
  }

}

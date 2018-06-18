class setup_jdk {

  file {'C:\opt\java':
  
    ensure     => directory,
    
  }
  
  exec {'jdk_install':

    require    => File ['C:\opt\java'],
    path       => 'S:/java/jdk-8u162-windows-x64.exe',
    command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process -Wait 'S:/java/jdk-8u162-windows-x64.exe'  
                   -ArgumentList '/S ADDLOCAL=`"ToolsFeature,PublicjreFeature`" /INSTALLDIRPUBJRE=C:\opt\java\jre8 INSTALLDIR=C:\opt\java'", 

  }
}



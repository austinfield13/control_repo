class setup_maven {

  file {'C:\opt\maven':
    
	ensure         => directory,
	
  }
  
  file {'C:\opt\maven\maven.zip':

    require     => File['C:\opt\maven'],
    ensure      => present,
    source      => 'S:\maven\apache-maven-3.5.3-bin.zip', 

  }

  exec {'unzip_maven':

    subscribe   => File['C:\opt\maven\maven.zip'],
    command     =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'C:\opt\maven\maven.zip' -DestinationPath 'C:\opt\maven'",
    refreshonly => true,

  }
 
  exec {'remove maven.zip':

    subscribe   => Exec['unzip_maven'],
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command rm C:\opt\maven\maven.zip",
    refreshonly => true,

  }

}

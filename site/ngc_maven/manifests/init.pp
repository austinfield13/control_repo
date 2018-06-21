class ngc_maven {

  file {'C:\opt\maven':
    
	  ensure      => directory,
	
  }
  
  exec {'unzip_maven':

    subscribe   => File['C:\opt\maven'],
    command     =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'S:\maven\apache-maven-3.5.3-bin.zip' -DestinationPath 'C:\opt\maven'",
    refreshonly => true,

  }
}

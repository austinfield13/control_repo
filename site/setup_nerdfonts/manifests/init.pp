class setup_nerdfonts {

  file {'C:\opt\nerd-fonts':
  
    ensure       => directory,
	
  }

  exec {'nerd-fonts':
  
    subscribe    => File['C:\opt\nerd-fonts'],
    command      => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'Start-Process S:\nerd-fonts\install.ps1'",
    refreshonly  => true,
	
  }
}

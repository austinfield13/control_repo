class ngc_kse {

  file {'C:\opt\kse':
  
    ensure         => directory,
   
  }

  package {'kse':
  
    ensure         => installed,
    source         => 'S:\kse\kse-532-setup.exe',
    install_options => ['/S', '/D=C:\opt\kse']
	
  }
}

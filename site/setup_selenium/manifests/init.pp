class setup_selenium {

  file {'C:\opt\selenium':
  
    ensure           => directory,
	
  }

  file {'C:\opt\selenium\chrome':
  
    ensure           => present,
    source           => 'S:\selenium\chrome',
	
  }

  file {'C:\opt\selenium\firefox':
  
    ensure           => present,
    source           => 'S:\selenium\firefox',
	
  }

  file {'C:\opt\selenium\IE':
  
    ensure           => present,
    source           => 'S:\selenium\IE',
	
  }
}

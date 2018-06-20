class setup_selenium {

  file {'C:\opt\selenium':
  
    ensure           => directory,
	
  }

  file {'C:\opt\selenium\chrome':
  
    ensure           => directory,
    source           => 'S:\selenium\chrome',
	
  }

  file {'C:\opt\selenium\firefox':
  
    ensure           => directory,
    source           => 'S:\selenium\firefox',
	
  }

  file {'C:\opt\selenium\IE':
  
    ensure           => directory,
    source           => 'S:\selenium\IE',
	
  }
}

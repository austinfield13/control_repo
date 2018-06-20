class setup_selenium {

  file {'C:\opt\selenium':
  
    ensure           => directory,
	
  }

  file {'C:\opt\selenium\chrome':
  
    ensure           => directory,
    source           => 'S:\selenium\chrome',
    recurse          => remote,
	
  }

  file {'C:\opt\selenium\firefox':
  
    ensure           => directory,
    source           => 'S:\selenium\firefox',
    recurse          => remote,
	
  }

  file {'C:\opt\selenium\IE':
  
    ensure           => directory,
    source           => 'S:\selenium\IE',
    recurse          => remote,
	
  }
}

class setup_jetbrains {

  file {'C:\opt\pycharm':
  
    ensure          => directory,
	
  }

  package {'pycharm':
  
    ensure          => installed,
    source          => 'S:\jetbrains\pycharm-community-2018.1.1.exe',
    install_options => ['/S', {'/CONFIG' => 'S:\jetbrains\pycharm.silent.config'}, {'/D' => 'C:\opt\pycharm'}],
	
  }

  file {'C:\opt\intellij':
  
    ensure          => directory,
	
  }

  package {'intellij':
  
    ensure          => installed,
    source          => 'S:\jetbrains\ideaIC-2018.1.1.exe',
    install_options => ['/S', {'/CONFIG' => 'S:\jetbrains\intellij.silent.config'}, {'/D' => 'C:\opt\intellij'}],
	
  }
}

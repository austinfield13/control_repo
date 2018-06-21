class setup_7zip{

  file {'C:\opt\7zip':
  
    ensure          => directory,
    
  }
  
  package {'7zip':
  
    ensure          => installed,
    source          => 'S:\7zip\7z1805-x64.exe',
    install_options => ['/S', '/D=C:\opt\7zip'],
    
  }
}

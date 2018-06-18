class setup_docker {

  package {'docker':
    ensure            => installed,
    source            => 'S:\docker\Docker for Windows Installer.exe',
    install_options   => ['/S', {'INSTALLDIR' => 'C:\opt\docker'}],
    
  }
    
}

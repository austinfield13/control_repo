class profile::setup_7zip {
  package {'7zip':
  ensure          => present,
  source          => 'S:\7zip\7z1805-x64.exe',
  install_options => [{'INSTALLDIR' => 'C:\opt\7zip'}],}
  }
}

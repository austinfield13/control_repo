class profile::setup_7zip {
  package {'7zip':
    ensure          => present,
    source          => 'https://www.7-zip.org/download.html',}
}

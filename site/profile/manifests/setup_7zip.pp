class profile::setup_7zip {
  exec {'7zip':
    command    => Install-7Zip.ps1,
    path       => 'S:/7zip',
  }
}

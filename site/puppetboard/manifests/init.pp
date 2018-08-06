class puppetboard {
  class { 'apache': }
  class { 'apache::mod::wsgi': }
  class { 'puppetboard':
    report_count       => 40,
    manage_git         => true,
    manage_virtualenv  => true,
  }
  class { 'puppetboard::apache::vhost':
    vhost_name         => 'mizar.entds.ngisn.com',
    port               => 80,
  }
}


class profile::puppetboard {

  class { 'apache': }

  class { 'apache::mod::wsgi': }

  class { 'puppetboard':

    reports_count       => 40,
    manage_git         => true,
    manage_virtualenv  => true,
  }

  class { 'puppetboard::apache::vhost':

    vhost_name         => 'localhost',
    port               => 80,

  }

}

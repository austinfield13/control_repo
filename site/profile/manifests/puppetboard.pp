class profile::puppetboard {

  class { 'apache': }

  class { 'apache::mod::wsgi': }

  class { 'puppetboard':

    reports_count       => 40,
    manage_git         => true,
    manage_virtualenv  => true,
  }

  class { 'puppetboard::apache::vhost':

    vhost_name         => 'mizar.entds.ngisn.com',
    port               => 80,

  }
  
  firewall { '500 allow PuppetBoard output':
    
    chain   => 'OUTPUT',
    state   => ['NEW'],
    dport   => '80',
    proto   => 'tcp',
    action  => 'accept',
  }
  
  firewall { '500 allow PuppetBoard input':
  
    chain   => 'INPUT',
    state   => ['NEW'],
    dport   => '80',
    proto   => 'tcp',
    action  => 'accept',
  }
    

}

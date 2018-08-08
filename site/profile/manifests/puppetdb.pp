class profile::puppetdb {
  # Configure puppetdb and its underlying database
  class { 'puppetdb':
   #listen_address     => 'mizar.entds.ngisn.com',
    #listen_port        => '80',
  }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}

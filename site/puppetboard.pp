class { 'apache': }
class { 'apache::mod::wsgi': }
class { 'puppetboard':
  report_count  => 40,
}
class { 'puppetboard::apache::vhost':
 vhost_name     => 'pboard.example.com',
 port           => 80,
}

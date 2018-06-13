node default {
  include role::default
}
node 'master.puppet.vm' {
  include role::master_server
}
  
  

node default {
  include role::base
}
node 'master.puppet.vm' {
  include role::master_server


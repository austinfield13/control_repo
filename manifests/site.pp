node default {
  include setup_jdk
  #include setup_python
}
node 'alcor' { 
  include role::base
}

node 'fulu' {
  include role::base
}

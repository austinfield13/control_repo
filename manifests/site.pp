node default {
  include setup_jdk
  #include setup_python
}
node 'alcor' { 
  include ngc_7zip
}

node 'fulu' {
  include role::base
}

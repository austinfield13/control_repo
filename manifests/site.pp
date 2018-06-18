node default {
  include setup_jdk
  #include setup_python
}
node 'alcor' {
  include setup_java
  #include setup_eclipse
  #include setup_7zip
  #include setup_atom
  #include setup_ads
  include setup_docker
}


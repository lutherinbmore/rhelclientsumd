class role::rhel_laptop {
  include profile::epel
}
file { '/home/lclarkjr/test.txt':
  ensure => file,
  content => "Welcome to Puppet!\n",
}
notify { 'greeting':
  message => 'Welcome to puppet!'
}

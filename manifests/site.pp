node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node /^essilt\d+$/ {
  include role::rhel_laptop
  file { '/home/lclarkjr/test.txt':
    ensure => file,
    content => "Welcome to Puppet!\n",
  }
  notify { 'greeting':
    message => 'Welcome to puppet!',
  }
}

node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node /^essilt\d+$/ {
  include adobeccextras
  include python3
}
node /^essilb\d+$/ {
  include role::rhel_laptop
  notify { 'test':
    message => 'Can you hear me?',
  }  
}


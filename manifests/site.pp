node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node /^essilt\d+$/ {
  include role::rhel_laptop
}

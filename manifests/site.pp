node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node /^ESSILT\d+$/ {
  include role::puppet_master
}

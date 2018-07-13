node default {
}
node 'PuppetBoxRHEL764' {
  include role::puppet_master
}
node /^ESSILT\d+$/ {
  include role::rhel_laptop
}

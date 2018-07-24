node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node /^essilt\d+$/ {
  include adobeccextras
  include python3
  include arcgis10
}
node /^essilb\d+$/ {
  include role::rhel_laptop
}


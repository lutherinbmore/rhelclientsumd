node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node /^essilt\d+$/ {
  include adobeccextras
  include arcgis10
  include officedeployment
}
node /^essilb\d+$/ {
  include role::rhel_laptop
}


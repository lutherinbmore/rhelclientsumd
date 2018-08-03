node default {
}
node 'PuppetBoxRHEL764.umd.edu' {
  include role::puppet_master
}
node 'essilt479' {
  include adobeccextras
  include arcgis10
  include officedeployment
  include researchdeployment
}
node /^essilt\d+$/ {
  include officedeployment
}
node 'essiwk170' {
  include arcgis10
  include adobeccextras
}
node /^essilb\d+$/ {
  include role::rhel_laptop
}


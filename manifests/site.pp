node default {
}
node 'puppetboxrhel764.umd.edu' {
  include role::puppet_master
}
node /^ESSILT\d+$/ {
  include role::rhel_laptop
}

class officedeployment {
  package { 'Microsoft Office Professional Plus 2016':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Office Pro Plus 2016 64bit\setup.exe',
  }
  package { 'Adobe Acrobat DC':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Adobe Acrobat\Setup.exe',
    install_options => ['/sall'],
  }
  package { 'Google Chrome':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Google Chrome\googlechromestandaloneenterprise64.msi',
    install_options => ['/qn'],
  }
  package { 'Mozilla Firefox 61.0.1 (x64 en-US)':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Mozilla Firefox\Firefox Setup 61.0.1.exe',
    install_options => ['-ms'],
  }
}

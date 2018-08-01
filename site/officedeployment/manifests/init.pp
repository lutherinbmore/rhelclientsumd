class officedeployment {
  package { 'Microsoft Office Professional Plus 2016':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Office Pro Plus 2016 64bit\setup.exe',
  }
  package { 'Adobe Acrobat DC':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Adobe Acrobat\Setup.exe',
    install_options => ['/sall'],
  }
  package { 'Google Chrome':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Google Chrome\googlechromestandaloneenterprise64.msi',
    install_options => ['/qn'],
  }
  package { 'Mozilla Firefox 61.0.1 (x64 en-US)':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Mozilla Firefox\Firefox Setup 61.0.1.exe',
    install_options => ['-ms'],
  }
  package { 'Cisco AnyConnect Secure Mobility Client ':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Cisco AnyConnect\anyconnect-win-4.4.03034-core-vpn-predeploy-k9.msi',
    install_options => ['/norestart','/passive'],
  }
  package { 'SSH Tectia Client':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\TectiaClient\Setup.exe',
    install_options => ['/s','/f1"\\\essi12.umd.edu\deployment-share\TectiaClient\setup.iss"'],
  }
}

class researchdeployment {
  package { 'MATLAB R2016b':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\MathWorks MATLAB 2016b\setup.exe',
  install_options => ['-inputFile','\\\essi12.umd.edu\deployment-share\MathWorks MATLAB 2016b\my_installer_input.txt'],
  } ->
  file { 'C:\Users\Public\Desktop\matlab.lnk':
  ensure => file,
  source => 'puppet:///modules/researchdeployment/matlab.lnk',
  source_permissions => ignore,
  }
  package { 'PuTTY release 0.70 (64-bit)':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\PuTTY\putty-64bit-0.70-installer.msi',
    install_options => ['/norestart','/passive'],
  }
  package { 'IDL 8.6':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\IDL8.6\idl86-win.exe',
  install_options => ['/LOADINF=\\\essi12.umd.edu\deployment-share\IDL8.6\IDL_only.ini','/SP','/VERYSILENT','/SUPPRESSMSGBOXES','/NOCANCEL','/NORESTART','/FORCECLOSEAPPLICATIONS'],
  } ->
}

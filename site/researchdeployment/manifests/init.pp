class researchdeployment {
  package { 'MATLAB R2016b'
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\MathWorks MATLAB 2016b\setup.exe',
  install_options => ['-inputFile my_installer_input.txt'],
  }
}
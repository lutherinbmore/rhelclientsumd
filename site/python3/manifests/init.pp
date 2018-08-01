class python3 {
  package { 'Python Launcher':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Python\python-3.6.5-amd64.exe',
    install_options => ['/quiet','InstallAllUsers=1','PrependPath=1','Include_test=0'],
    }
}

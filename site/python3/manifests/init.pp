class python3 {
  package { 'Python Launcher':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Python\python-3.6.5-amd64.exe',
    install_options => ['/quiet','InstallAllUsers=1','PrependPath=1','Include_test=0'],
    }
}

# @summary A short summary of the purpose of this class
# Operating System Variables
#   include apache::params
class apache::params {
  $install_ensure = 'present'

  case $::osfamily {
    'RedHat': {
    $install_name = 'httpd'
    }
    'Debian': {
    $install_name = 'apache2'
    }
  }
}

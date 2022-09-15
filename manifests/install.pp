#
class beanstalkd::install inherits beanstalkd {
  package { $beanstalkd::package_name:
    ensure => $beanstalkd::package_ensure,
  }
}

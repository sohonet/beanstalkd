#
class beanstalkd::service inherits beanstalkd {
  service { 'beanstalkd':
    ensure     => $beanstalkd::service_ensure,
    enable     => $beanstalkd::service_enable,
    hasstatus  => true,
    hasrestart => true,
  }
}

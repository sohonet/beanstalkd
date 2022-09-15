#
class beanstalkd::config inherits beanstalkd {
  file { $beanstalkd::config_file:
    ensure  => file,
    mode    => '0644',
    content => template($beanstalkd::config_template),
  }

  file { $beanstalkd::binlog_directory:
    ensure => directory,
    owner  => $beanstalkd::user,
    group  => $beanstalkd::group,
    mode   => '0644',
  }
}

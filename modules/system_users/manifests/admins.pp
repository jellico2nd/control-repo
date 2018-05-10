# == Class: class_name
#
class system_users::admins {
    group { 'sysadmin':
      ensure => present,
    }

  if $facts['kernel'] == 'windows'{
    user { 'vito':
          ensure  => present,
      comment     => 'First Last',
      home        => '/home/',
      # shell => '/bin/bash',
      # uid => '501',
      # gid => '20',
    }
  }
  else
  {
    user { 'vito':
      ensure  => present,
      comment => 'First Last',
      home    => '/home/vito',
      shell   => '/bin/csh',
    # uid => '501',
    # gid => '5000',
      require => Package['csh'],
      groups  => ['sysadmin'],
  }
    package { 'csh':
      ensure => latest,
    }
}
}

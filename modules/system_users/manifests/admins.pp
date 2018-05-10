# == Class: class_name
#
class system_users::admins {
  group { 'sysadmin':
    ensure => present,
  }

  if $facts['kernel'] == 'windows'{
    user { 'name':
        ensure => present,
      # shell => '/bin/bash',
      # uid => '501',
      # gid => '20',
    }
  }
  else
  {
    user { 'name':
      ensure  => present,
      comment => 'First Last',
          home=> '/home/',
        shell => '/bin/csh',
      require => Package['csh']
      # uid => '501',
      # gid => '20',
    }
    }
    package { 'csh':
      ensure => latest,
    }
  }
}

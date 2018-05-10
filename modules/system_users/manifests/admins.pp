# == Class: class_name
#
class system_users::admins {
  user { 'vito':
    comment => 'First Last',
    home => '/home/vito',
    ensure => present,
    shell => '/bin/csh',
    # uid => '501',
     gid => '5000',
     require => Package['csh'],
     groups => ['sysadmin'],
  }
  group { 'sysadmin':
    ensure => present,
    gid => 5000,
  }
  package { 'csh':
    ensure => latest,
  }
}

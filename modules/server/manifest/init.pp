# == Class: class_name
#
class server {
  host { 'puppetserver':
    ensure => 'present',
    name   => ['puppet-fundamentals-server-10.local', 'puppet-fundamentals-server-10'],
    ip     => '159.65.85.160',
  }
}

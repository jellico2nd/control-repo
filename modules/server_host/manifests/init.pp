# == Class: class_name
#
class server_host {
  host { 'puppetserver':
          ensure       => 'present',
    host_aliases       => ['puppet-fundamentals-server-10.local', 'puppet-fundamentals-server-10'],
              ip       => '159.65.85.160',
  }
}

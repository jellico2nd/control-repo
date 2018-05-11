# == Class: class_name
#
class nginx {
  # resources
  package { 'nginx':
    ensure => installed,
  }

  if($facts['kernel'] == 'windows')
  {
    file { 'index.html':
      ensure => file,
      mode   => '0755',
      source => 'puppet:///modules/nginx/files/index.html',
      path   => 'C:/ProgramData/nginx/html/',
    }
  }
  else {
    file { 'index.html':
      ensure => file,
      mode   => '0755',
      source => 'puppet:///modules/nginx/files/index.html',
      path   => '/var/www/',
    }
  }
}

# == Class: class_name
#
class nginx {
  $docPath = '/var/www',
}
{
  package { 'nginx':
    ensure   => installed,
  #  provider => 'chocolatey',
  }

  if($facts['kernel'] == 'windows')
  {
    file { '$docPath/index.html':
      ensure  => file,
      mode    => '0755',
      owner   => 'vito',
      group   => 'Users',
      source  => "puppet:///modules/${modulename}/files/index.html",
      path    => 'C:/ProgramData/nginx/html/',
      recurse => true,
      require => User['vito'],
    }
  }
  else {
    file { '$docPath/index.html':
      ensure  => file,
      owner   => 'www-data',
      group   => 'www-data',
      mode    => '0755',
      source  => "puppet:///modules/${modulename}/files/index.html",
      path    => '/var/www/',
      recurse => true,
    }
  }
}

class system_users{
    user { 'fundamentals':
    ensure => present,
#    password => 'puppetPassword',
#    groups => ['users'],
    }

#    group { 'sysadmin':
#        ensure  => present,
#    }
}

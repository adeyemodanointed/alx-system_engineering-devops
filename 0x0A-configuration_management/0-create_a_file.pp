# Creates a fie /tmp/school
file { '/tmp/school':
    ensure  => present,
    group   => 'www-data',
    owner   => 'www-data',
    content => 'I love Puppet',
    mode    => '0744'
}

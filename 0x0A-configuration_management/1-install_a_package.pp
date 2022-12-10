exec {'apt update':
    command => '/usr/bin/apt update'
}

package {'python3-pip':
    ensure  => 'installed'
}

exec {'install flask':
    path    => '/usr/lib/python3/dist-packages',
    command => 'pip install flask'
}

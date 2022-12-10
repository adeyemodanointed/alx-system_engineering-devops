# Install flask pip3
exec {'apt update':
    command => 'apt update',
    provider => shell
}

package {'python3-pip':
    ensure  => 'installed'
}

exec {'install flask':
    path    => '/usr/lib/python3/dist-packages',
    command => 'pip3 install flask'
}

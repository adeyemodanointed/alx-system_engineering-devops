# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Set custom HTTP header in Nginx configuration
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "location / {
    add_header X-Served-By $hostname;
  }",
  notify  => Service['nginx'],
}

# Restart Nginx service when configuration changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

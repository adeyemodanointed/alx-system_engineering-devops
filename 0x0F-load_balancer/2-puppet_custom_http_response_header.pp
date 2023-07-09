# Install Nginx package
package { 'nginx':
  ensure => installed,
}
file_line { 'add_x_served_by':
  path  => '/path/to/your/file',
  line  => '  X-served By',
  match => 'location \/ {',
}
# Set custom HTTP header in Nginx configuration
file_line { 'add_x_served_by':
  path  => '/etc/nginx/sites-available/default',
  line  => '\t\tadd_header X-Served-By $HOSTNAME',
  match => '\tlocation \/ {',
  notify  => Service['nginx'],
}

# Restart Nginx service when configuration changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Change OS configurations for  user holberton
exec {'Change OS Configuration for  holberton user':
  command  => 'sudo adduser holberton --disabled-password',
  provider => shell,
}

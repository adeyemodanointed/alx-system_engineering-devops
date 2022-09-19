#Puppet config to change ssh_config

file {'/etc/ssh/ssh_config':
  path => '/etc/ssh/ssh_config',
}

class { '::ssh::sshd_config':
  options	=> {
    'HostKeys' => ['~/.ssh/school'],
    'PasswordAuthentication' => 'no',
  },
}

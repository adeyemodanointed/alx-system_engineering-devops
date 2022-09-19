#Puppet config to change ssh_config

class { 'ssh::server':
  options	=> {
    'HostKeys' => ['~/.ssh/school'],
    'PasswordAuthentication' => 'no',
  },
}

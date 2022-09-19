class { 'ssh::server':
  options	=> {
    'HostKeys' => ['~/.ssh/school'],
    'PasswordAuthentication' => 'no',
  },
}

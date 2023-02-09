#Fix the number of files open issue on nginx
exec {'Fix the nofiles issue on nginx':
  command  => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  provider => shell,
}

# puppet manifest to kill a process called 'killmenow'
exec { 'kill_killmenow':
  command     => 'pkill -9 -f killmenow',
  path        => ['/bin', '/usr/bin', '/usr/sbin', '/sbin'],
}

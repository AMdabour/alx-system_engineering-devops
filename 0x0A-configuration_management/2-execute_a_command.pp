# puppet manifest to kill a process called 'killmenow'
exec { 'kill_killmenow':
  command     => 'pkill -f "killmenow"',
  path        => ['/bin', '/usr/bin', '/usr/sbin', '/sbin'],
  refreshonly => true,
}

# puppet manifest to kill a process called 'killmenow'
exec { 'kill_killmenow':
  command     => 'pkill killmenow',
  path        => ['/bin', '/usr/bin', '/usr/sbin', '/sbin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}

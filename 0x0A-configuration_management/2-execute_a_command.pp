# puppet manifest to kill a process called 'killmenow'
exec { 'kill_killmenow':
  command     => 'pkill -f "killmenow"',
  provider    => 'shell',
  refreshonly => true,
}

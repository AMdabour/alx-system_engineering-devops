# puppet manifest to kill a process called 'killmenow'
exec { 'pkill':
  command     => 'pkill killmenow',
  provider    => 'shell',
}

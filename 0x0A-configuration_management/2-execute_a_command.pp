# puppet manifest to kill a process called 'killmenow'
exec { 'kill_killmenow':
  path    => '/bin/',
  command => 'pkill killmenow',
}

# puppet manifest to kill a process called 'killmenow'
<<<<<<< HEAD

exec { 'kill_killmenow':
  command     => 'pkill killmenow',
  path        => ['/bin', '/usr/bin', '/usr/sbin', '/sbin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
=======
exec { 'kill_killmenow':
  command => 'pkill killmenow',
  path    => '/bin',
>>>>>>> f30f419c8cc06433cdc14337f7289734435f1dd9
}

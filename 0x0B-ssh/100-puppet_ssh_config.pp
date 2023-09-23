# setting up my ssh client config file

include stdlib

file_line { 'disabling password authentication':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '#   PasswordAuthentication no',
  replace => true,
}

file_line { 'Delaring identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '#   IdentityFile ~/.ssh/school',
  replace => true,
}

# Install Nginx web server (w/ Puppet)

package { 'nginx':
  ensure  => installed,
}

file_line { 'add redirec':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

file { '/etc/nginx/sites-available/default':
  ensure => present,
}

service { 'nginx':
  ensure    => running,
  subscribe => File['/etc/nginx/sites-available/default'],
  require   => Package['nginx'],
}

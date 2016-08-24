  file { '/var/www':
    ensure  => directory,
    owner   => 'clockworkdeploy',
    recurse => true
  }

  file { '/var/www/craft/config':
    ensure  => directory,
    owner   => 'clockworkdeploy',
    group   => 'www-data',
    recurse => true
  }

file { '/var/www/craft/storage':
    ensure  => directory,
    owner   => 'clockworkdeploy',
    group   => 'www-data',
    recurse => true

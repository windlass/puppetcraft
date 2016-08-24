  file { '/var/www':
    ensure  => directory,
    owner   => 'ubuntu',
    recurse => true
  }

  file { '/var/www/craft/config':
    ensure  => directory,
    owner   => 'www-data',
    group   => 'www-data',
    recurse => true
  }

file { '/var/www/craft/storage':
    ensure  => directory,
    owner   => 'www-data',
    group   => 'www-data',
    recurse => true

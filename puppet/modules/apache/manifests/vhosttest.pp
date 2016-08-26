class { 'apache': }

apache::vhost { 'admin.craft.com':
  port     => '80',
  docroot  => '/var/www/html',
  override => 'All',
}


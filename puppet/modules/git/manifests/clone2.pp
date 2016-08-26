# Clone repo containing Craft
vcsrepo { '/tmp/craftCMS':
  ensure   => present,
  provider => git,
  source   => 'git://github.com/nelemansc/CraftCMS.git',
}

# Create symlinks to Craft
  file { '/var/www/craft':
    ensure => 'link',
    target => '/tmp/craftCMS/craft',
  }
  
 
  file { '/var/www/public':
    ensure => 'link',
    target => '/tmp/craftCMS/public',
  }

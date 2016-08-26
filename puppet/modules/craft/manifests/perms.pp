#Set permissions based on craft requirements

file { "/var/www":
           ensure    => directory,
           recurse   => true,
           ignore    => ["/var/www/craft/config", "/var/www/craft/storage"],
           owner     => "clockworkdeploy",
   }

file { "/var/www/craft/config":
           ensure    => directory,
           recurse   => true,
           owner     => "www-data",
   }

file { "/var/www/craft/storage":
           ensure    => directory,
           recurse   => true,
           owner     => "www-data",
   }

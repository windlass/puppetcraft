# install php5 package
package { 'php5':
  ensure => installed,
}

# ensure info.php file exists
file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package[apache::'apache2'],        # require 'apache2' package before creating
}

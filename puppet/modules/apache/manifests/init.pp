class apache {

# install apache2 package
package { 'apache2':
  ensure   => installed,
  override => All,
   }

# ensure apache2 service is running
service { 'apache2':
  ensure   => running,
  require  => Package['apache2'];
   }
}

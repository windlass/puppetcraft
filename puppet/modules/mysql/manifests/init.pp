# install mysql-server package
package { 'mysql-server':
  ensure => installed,
}

# ensure mysql service is running
service { 'mysql':
  ensure => running,
}

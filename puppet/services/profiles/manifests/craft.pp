class profiles::craft  {

  # Configure mysql
  class mysql::server  {
   
   package { "mysql-server": ensure => installed }
   package { "mysql": ensure => installed }

  service { "mysqld":
    enable => true,
    ensure => running,
    require => Package["mysql-server"],
  }
}
  # Create database
 define mysqldb( $user, $password ) {
    exec { "create-${name}-db":
      unless => "/usr/bin/mysql -u${user} -p${password} ${name}",
      command => "/usr/bin/mysql -uroot -p$mysql_password -e \"create database ${name}; grant all on ${name}.* to ${user}@localhost identified by '$password';\"",
      require => Service["mysqld"],
    }
  }
}

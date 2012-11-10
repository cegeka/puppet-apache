class apache::mod::passenger {
  include 'apache'
  include 'apache::params'

  package { 'mod_passenger_package':
    ensure  => installed,
    name    => $apache::params::mod_passenger_package,
    require => Package['httpd'],
  }

  a2mod { 'passenger':
    ensure  => present,
    require => Package['mod_passenger_package'],
  }
}

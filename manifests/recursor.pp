# the powerdns recursor
class powerdns::recursor inherits powerdns {
  package { $::powerdns::params::recursor_package:
    ensure => installed,
  }

  service { $::powerdns::params::recursor_service:
    ensure  => running,
    enable  => true,
    require => Package[$::powerdns::params::recursor_package],
  }
}

class common::config {

# Enable NTP & set UK servers

	class { '::ntp':
	servers => [ '0.uk.pool.ntp.org', '1.uk.pool.ntp.org', '2.uk.pool.ntp.org' ],
	}

# Sort IPTables

  package { "iptables": 
    ensure => present;
  }

  service { "iptables":
    require => Package["iptables"],
    hasstatus => true,
    status => "true",
  }

  file { "/etc/sysconfig/iptables":
    owner   => "root",
    group   => "root",
    mode    => 600,
    replace => true,
    ensure  => present,
    source  => "/vagrant/files/iptables.txt",
    require => Package["iptables"],
    notify  => Service["iptables"],
    ;
  }

}
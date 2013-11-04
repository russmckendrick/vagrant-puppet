class services::phpMyAdmin {

    package { "phpMyAdmin":
    ensure  => present,
    before => File['/etc/phpMyAdmin/config.inc.php'],
    }

  file { "/etc/httpd/conf.d/phpMyAdmin.conf":
    owner   => "root",
    group   => "root",
    mode    => 644,
    replace => true,
    ensure  => present,
    source  => "puppet:///modules/services/phpMyAdmin.conf",
    require => Package["httpd"],
    notify  => Service["httpd"],
    ;
  }

  file { "/etc/phpMyAdmin/config.inc.php":
    owner   => "root",
    group   => "root",
    mode    => 644,
    replace => true,
    source  => "puppet:///modules/services/phpmy_admin_config.inc.php",
  }

}
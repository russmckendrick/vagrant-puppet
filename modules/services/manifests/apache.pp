class services::apache {

# Make sure that the webroot is there !!!

	file { "$webroot/public_html":
    ensure => "directory",
    mode   => 755,
	}

# Install the package and make sure its running

  	package { "httpd":
    ensure => present,
	  before => File['/etc/httpd/conf.d/vhost.conf'],
	 }

  package { "httpd-devel":
    ensure  => present
  }

# Start the service

  	service { 'httpd':
    name      => 'httpd',
    require   => Package["httpd"],
    ensure    => running,
    enable    => true
  	}

# Put the vhost in place

  file { "/etc/httpd/conf.d/vhost.conf":
    owner   => "root",
    group   => "root",
    mode    => 644,
    replace => true,
    ensure  => present,
    content => template("services/vhost.conf.erb"),
    notify  => Service["httpd"]
  }

}
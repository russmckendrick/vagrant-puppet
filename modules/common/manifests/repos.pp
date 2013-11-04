class common::repos {

# Add EPEL

package { 'epel-release-6-8.noarch':
	ensure   => present,
	source   => 'http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm',
	provider => rpm,
    }

# Add NGINX

	file { "/etc/yum.repos.d/nginx.repo":
	owner   => "root",
	group   => "root",
	mode    => 600,
	ensure  => file,
	source  => "puppet:///modules/common/nginx.repo",
	}

}
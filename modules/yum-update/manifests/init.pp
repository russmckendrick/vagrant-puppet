class yum-update {

# Runs a Yum Update

	exec { 'yum-update':
	command => '/usr/bin/yum -y update',
	}

	notify {'after':
	message => 'Yum update has been successfully executed.',
	}

}
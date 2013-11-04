class services::php {

# Install the packages

	package{
	[
		'php',
		'php-cli',
		'php-common',
		'php-devel',
		'php-gd',
		'php-mcrypt',
		'php-ldap',
		'php-mbstring',
		'php-mysql',
		'php-pdo',
		'php-pear',
		'php-pecl-apc',
		'php-soap',
		'php-xml',
    ]:
    ensure => installed,
	}
}
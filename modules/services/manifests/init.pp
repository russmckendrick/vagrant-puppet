class services {

	class { 'mysql::server':
    	root_password => "$mysql_root_password",
	}

	include '::services::apache'
	include '::services::phpMyAdmin'
	include '::mysql::server'
 	include '::services::php'
	include '::services::git'
	include '::services::mysqldatabase'

}
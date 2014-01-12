class services::mysqldatabase {

    mysql::db { "$db_name":
	user     => "$db_user",
	password => "$db_pass",
	host     => "localhost",
	grant    => ['SELECT', 'UPDATE'],
	require  => File['/root/.my.cnf'],
	}

}
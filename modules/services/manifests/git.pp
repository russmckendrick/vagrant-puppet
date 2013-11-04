class services::git {

	git::repo{'vagrant-dev-box':
	path   => "$webroot/public_html",
	source => "$git_repo",
	}

}
# Local LAMP Setup on CentOS 6.4 with Vagrant / Puppet

This installs a basic Dev server with the following;

* Apache
* MySQL
* PHP
* phpMyAdmin

## Installation 
Assuming you already have [VirtualBox](https://www.virtualbox.org), [Vagrant](http://www.vagrantup.com) and [GIT](http://git-scm.com) run the following commands;

```bash
mkdir -p ~/path/to/where/this/will/live/
cd ~/path/to/where/this/will/live/
git clone https://github.com/russmckendrick/vagrant-puppet-apache.git .
```
Before you bring up the box, there are a few varibles you can set in vagrant.pp;

* **$git_repo** = URL to your codebase, by default this will checkout a simple php info file
* **$mysql_root_password**  = The root password for MySQL, defaults to *wibble*
* **$db_name** = Create a database, defaults to *vagrant*
* **$db_user** = Create a user for *$db_name*, defaults to *vagrant*
* **$db_pass** = Sets the passsword for *$db_user*, defaults to *vagrant*

Once you have set the varibles you can start the box with;

```bash
vagrant up
```

## Usage

The files in you checked out will be in `~/path/to/where/this/will/live/webroot/public_html/` point your browser at [http://localhost:8080](http://localhost:8080) to see code in action.

## MySQL / phpMyAdmin Password

You can access phpMyAdmin at [http://localhost:8080/phpmyadmin/](http://localhost:8080/phpmyadmin/), when you are promted for a username use `root` and the password set by the  `$mysql_root_password` varible.

## Vagrant Stuff

* To login into the VM `vagrant ssh`
* Halt the VM `vagrant halt` when a VM has been halted you can start it backup with `vagrant up`
* Finally to get rid of the VM `vagrant destroy`, this will not touch the files in `/webroot`

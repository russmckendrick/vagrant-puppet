# Define the default Varibles

$server_name = "dev.local"
$webroot = "/webroot"

$mysql_root_password = "wibble"
$db_name = "vagrant"
$db_user = "vagrant"
$db_pass = "vagrant"

$git_repo = "https://github.com/russmckendrick/vagrant-placeholder.git"

# Run the installaton

include ::common
include ::yum-update
include ::services
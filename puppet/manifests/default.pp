Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
if $virtual == "virtualbox" and $fqdn == '' {
  $fqdn = 'localhost'
}

include apache
include system-update

include nodejs

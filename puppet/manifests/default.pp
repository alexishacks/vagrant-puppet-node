Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
if $virtual == "virtualbox" and $fqdn == '' {
  $fqdn = 'localhost'
}

include apt

include apache

include nodejs

package { 'express-generator':
  ensure   => 'present',
  provider => 'npm',
}

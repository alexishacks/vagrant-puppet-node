Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
if $virtual == "virtualbox" and $fqdn == '' {
  $fqdn = 'localhost'
}

include apt

include apache

include nodejs

include git

package { 'build-essential':
  ensure   => 'present',
  provider => 'apt',
}

package { 'express-generator':
  ensure   => 'present',
  provider => 'npm',
}

package { 'gulp':
  ensure   => 'present',
  provider => 'npm',
}

package { 'bower':
  ensure   => 'present',
  provider => 'npm',
}

class {'::mongodb::server':
  port    => 27018,
  verbose => true,
}

$package = "chrony"
$config = "/etc/chrony.conf"
$service = "chronyd"

package { "Install Chrony" :
  name => "$package", 
  ensure => present,
}

file { "$config" : 
  content => "server 0.centos.pool.ntp.org iburst\n",
  ensure => present
}

service { "Install Chrony": 
   name => "$service",
   ensure => running,
}


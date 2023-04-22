# Class: apache
# ===========================
# Full description of class apache here.
# Parameters
# ----------

class apache($apachefiles = {}) {

  # Declare defaults. 
  File {
    notify => Service["httpd"],
    require => Package["httpd"],
    owner => "apache",
    group => "apache",
    mode => "0644",
  } 
  
  # Install Apache. 
  Package { "httpd" : 
	ensure => "installed",
  }
  
  # Declare files. 
  $apachefiles.each |$file,$content| {
	file { "$file" : 
	  content => "$content"
	}
  }
  # Restart service
  service { "httpd" : 
	ensure => "running"
  }
}

class newapache {
}

define tmpfile($content = "") {
  file { "/tmp/${name}" :
	content => $content
  }
}

define mywebapp (String $domain = $facts["networking"]["domain"],
	String $path,
	String $platform)
{
	notify { "$domain $path and $platform" :
	}
}

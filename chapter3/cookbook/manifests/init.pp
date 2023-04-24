# Class: cookbook
# ===========================
#
# Full description of class cookbook here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'cookbook':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2023 Your name here, unless otherwise noted.
#
class cookbook {
	# First Create a file. 
	file { "/tmp/cookbook": 
		ensure => file,
		mode => '0644'
	}

	# Add a line called Jaya Guru Datta !!
	#  World!
	file_line { "greeting" : 
		path => "/tmp/cookbook", 
		line => "Jaya Guru Datta!!",
		require => File["/tmp/cookbook"]
	}
	
}

class cookbook::addlines {

	file { "/tmp/cookbook" : 
		ensure => file
	}

	file_line { "hello-line" : 
		ensure => present, 
		path => "/tmp/cookbook", 
		line => "Hello World!",
		require => File["/tmp/cookbook"]

	}
	
	file_line { "fish-line" : 
		ensure => present, 
		path => "/tmp/cookbook", 
		line => "So long, and thanks for all the fish.",
		require => File["/tmp/cookbook"]
	}
}

class cookbook::removelines {

	file_line { "hello-removal" : 
		ensure => absent, 
		path => "/tmp/cookbook", 
		line => "Hello World!",
		# require => File["/tmp/cookbook"]
	}

	file_line { "fish-changed" : 
		path => "/tmp/cookbook", 
		line => "Oh freddled gruntbuggly, thanks for all the fish.",
		 match => 'fish.$'
		# require => File["/tmp/cookbook"] # This has to be resource, not actual file.l 

	}
}







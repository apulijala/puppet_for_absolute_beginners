$str = "Jaya Guru Datta and Sree Guru Datta!!\n"

file { "/var/tmp/testfile" :
	owner => "arvindpulijala",
	group => "arvindpulijala",
	mode => "777",
	content => $str
}

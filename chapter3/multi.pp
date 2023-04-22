$dir = "/var/tmp/testdirone"
$file = "/var/tmp/testdirone/testonefile"
$content = "Hello World Here!!\n"

file { "$dir" : 
   ensure => directory,
}

file { "$file" : 
   content => $content,
   mode => "777",
   ensure => present
}


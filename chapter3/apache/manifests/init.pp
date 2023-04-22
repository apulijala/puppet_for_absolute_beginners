# Class: apache
# ===========================
# Full description of class apache here.
# Parameters
# ----------

class apache {

 # Set File Defaults. 
 File {
    owner => "apache",
    group => "apache", 
    require => Package["httpd"],
    notify => Service["httpd"],
    mode => "0644",
 }
 
 # Install httpd package. 
 package { "httpd" : 
	ensure => installed

 }
 
 # Create files index.html and cookbook.html 
 $index = @(INDEX)
  <html>
    <body>
	<h1>  <a href = "cookbook.html" > Cookbook !! </a>  </h1>
   </body>
 </html>
 | INDEX

 $cookbook = @(COOKBOOK)
  <html>
    <body>
	<h1> Cookbook !! </h1>
   </body>
 </html>

 |COOKBOOK

 # Declare variables 
 $allfiles = {
	"/var/www/html/index.html" => "$index",
        "/var/www/html/cookbook.html" => "$cookbook"
 }
 
 $allfiles.each|String $a_file, String $content| {
	file { "$a_file" : 
		content => "$content"
	}
 }

 service { "httpd" : 
	ensure => running
 }

}



define tmpfile($content = "") {
  file { "tmp/${name}" :
	content => $content

  }
}

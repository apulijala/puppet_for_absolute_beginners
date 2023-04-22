class practice::demo_tag {
	if tagged("demo_tag") {
		notify {"I am tagged with demo_tag": }
	}else {
		notify {"I am tagged with demo_tag": }
	}
}

class practice::first_class {
	notify {"First class" : }
}

class practice::second_class {
	notify {"Second class" : }
}

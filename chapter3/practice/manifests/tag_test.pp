class practice::tag_test {

	if tagged("tag_test")  {
		notify {"tag_test is tagged" : }
	}
	else {
		notify {"tag_test is not tagged ": }
	}
}

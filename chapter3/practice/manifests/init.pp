# Class: practice
# ===========================
#
# Full description of class practice here.
#
# Parameters
# ----------
#
# Document parameters here.
#
#

class practice {
	if tagged('tagging') {
		notify {"practice class is tagged" : }
	}
	else {
		notify {"practice class is not tagged": }
	}
}

class tag_test {
	if tagged('tagging') {
		notify {"tag_test class is tagged" : }
	}
	else {
		notify {"tag_test class is not tagged": }
	}
}

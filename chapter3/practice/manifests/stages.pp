class practice::stages {

	stage { "first" :
		before => Stage['main']
	}

	stage { "last" : 
		require => Stage["main"]
	}
	
	class { "practice::me_first" : 
		stage => "first"
	}

	class { "practice::me_last" : 
		stage => "last"
	}

}

class practice::me_first {
	notify {"Me First" : }
}

class practice::me_last {
        notify {"Me Last ":}

}

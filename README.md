# Docker container for build Android Studio

You have to start sync and build manually.

	$ docker run -i -t keiji/build-android-studio /bin/bash
	# ./build.sh studio-1.0-dev
	...
	# ls android-studio-SNAPSHOT.*
	android-studio-SNAPSHOT.mac.zip	android-studio-SNAPSHOT.win.zip
	android-studio-SNAPSHOT.tar.gz

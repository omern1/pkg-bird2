build:
	wget "ftp://bird.network.cz/pub/bird/bird-2.0.4.tar.gz"
	sh -c 'cat bird-2.0.4.tar.gz | sha256sum | grep '676010b7517d4159b9af37401c26185f561ffcffeba73690a2ef2fad984714de  -' || exit 1'
	tar -xvzf bird-2.0.4.tar.gz
	mv -r ./bird-2.0.4/* ../
	dh binary

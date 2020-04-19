build:
	wget "ftp://bird.network.cz/pub/bird/bird-2.0.7.tar.gz"
	sh -c 'cat bird-2.0.7.tar.gz | sha256sum | grep '631d2b58aebdbd651aaa3c68c3756c02ebfe5b1e60d307771ea909eeaa5b1066  -' || exit 1'
	tar -xvzf bird-2.0.7.tar.gz
	sh -c 'mv ./bird-2.0.7/* ./'
	git apply < post-everything.patch
	dh binary

directorys:
	export URL=$$( curl --silent "https://api.github.com/repos/c4dt/arti-directory/releases/latest" | \
		jq -r '.assets[0].browser_download_url' ); \
	wget -q -O- $$URL | tar -C directory -xz

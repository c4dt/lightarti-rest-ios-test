.PHONY: directory.update

all: directory
	@find directory/consensus.txt -mmin +1440 -exec make clean all \;

directory:
	mkdir directory
	export URL=$$( curl --silent "https://api.github.com/repos/c4dt/arti-directory/releases/latest" | \
		jq -r '.assets[0].browser_download_url' ); \
	wget -q -O- $$URL | tar -C directory -xz

clean:
	rm -rf directory


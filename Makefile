DIRCACHE_URL := https://github.com/c4dt/lightarti-directory/releases/latest/download/directory-cache.tgz

.PHONY: directory
directory:
	mkdir -p directory
	curl --location '$(DIRCACHE_URL)' | \
		tar -C directory -xz

.PHONY: clean
clean:
	rm -rf directory

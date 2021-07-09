# Arti-iOS-test

This is a small test-app that uses `arti-rest` to communicate with a website over
Tor.
It sends a single `GET` request and displays the result as plain text.
There is an attempt at running the synchronous call in the background here:
[BackgroundCall.swift](arti-ios-test/BackgroundCall.swift)

For more information, see

* [arti-rest](https://github.com/c4dt/arti-rest) - for the underlying glue code to call into arti from
  FFI
* [arti-ios](https://github.com/c4dt/arti-ios) - for the iOS library
* [arti-android](https://github.com/c4dt/arti-android) - for the Android library

## Updating the tor-directory cache

This version uses a cached version of the tor-directory.
It is available in the [arti-directory](https://github.com/c4dt/arti-directory) repository and
updated once a day.
To copy the latest files to the test app, you can simply run make:

```bash
make
```

If the files are older than 1 day, it will download newer files.
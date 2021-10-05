# Arti-iOS-test

This is a small test-app that uses `lightarti-rest` to communicate with a website over
Tor.
It sends a single `GET` request and displays the result as plain text.
There is an attempt at running the synchronous call in the background here:
[BackgroundCall.swift](lightarti-rest-ios-test/BackgroundCall.swift)

For more information, see

* [lightarti-rest](https://github.com/c4dt/lightarti-rest) - for the underlying glue code to call into arti from
  FFI
* [lightarti-rest-ios](https://github.com/c4dt/lightarti-rest-ios) - for the iOS library
* [arti-android](https://github.com/c4dt/arti-android) - for the Android library

## Updating the tor-directory cache

This version uses a cached version of the tor-directory.
It is available in the [lightarti-directory](https://github.com/c4dt/lightarti-directory) repository and
updated once a day.
To copy the latest files to the test app, you can simply run make:

```bash
make
```

If the files are older than 1 day, it will download newer files.

# License

The code is licensed under the MIT license.

# Contributors

`lightarti-rest-ios-test` is maintained by the [Center for Digital Trust](https://c4dt.org/). The following people contributed to the implementation of `lightarti-rest`:

- Linus Gasser, C4DT
- Valérian Rousset, C4DT
- Christian Grigis, C4DT
- Laurent Girod, SPRING Lab, EPFL

Analysis and design by:

- Wouter Lueks, SPRING Lab, EPFL
- Carmela Troncoso, SPRING Lab, EPFL

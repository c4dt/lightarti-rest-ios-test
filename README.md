# Arti-iOS-test - ARCHIVED

This project has been archived by the [C4DT](https://c4dt.epfl.ch) Factory team.
It is kept here for reference and for old URLs.
You can find more information in our [showcase](https://factory.c4dt.org/showcase/lightarti/presentation)
and find our contact information.

## Description

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

# Using XCode

Here a short summary for the next time I try to use it with XCode:

## Using lightarti-rest-ios from github

Remove an eventual local lightarti-rest-ios:
1. Click on the `Project Navigator` in the upper left
1. In `Packages` at the top, delete the `lightarti-rest-ios` package with `Remove Reference`

1. Choose `lightarti-rest-ios-test`
1. In the main view, select `Project` and in `Package Dependencies` add a `Package`
1. Choose `GitHub` and search for `lightarti-rest-ios` or enter the url `https://github.com/c4dt/lightarti-rest-ios`
1. Confirm with `Add Package`, wait for verification, `Add Package` again
1. Wait for XCode to do its thing as seen in the upper right
1. In the menu `Product`, choose `Clean Build Folder`

## Using a local lightarti-rest-ios

We suppose that you have `lightarti-rest`, `lightarti-rest-ios`, and `lightarti-rest-ios-test`
in the same directory.

Remove an eventual github lightarti-rest-ios:
1. Click on the `Project Navigator` in the upper left
1. Choose `lightarti-rest-ios-test`
1. In the `PROJECT`, choose `Package Dependencies` and delete the `lightarti-rest-ios` in `Packages`

Do the following:
1. Go to `lightarti-rest` and run `make dev`
1. In XCode, click on the `Project Navigator` in the upper left
1. Right-click in `Packages` on top and choose `Add Packages`
1. Choose `Add Local` and select the `lightarti-rest-ios` directory
1. Wait for XCode to do its thing as seen in the upper right
1. Choose `lightarti-rest-ios-test` in the `Project Navigator`
1. In the main view, select `Targets`, and in `General` at the bottom, click to add a new `Frameworks, Librarires, and Embedded Content`
1. Select the `Workspace / lightarti-rest-ios / lightarti-rest-ios`
1. Wait for XCode to do its thing as seen in the upper right
1. In the menu `Product`, choose `Clean Build Folder`
1. In the `Packages/lightarti-rest-ios/Package.swift`, comment the binary target linking to
  the github, and uncomment the binary target with the `path`. Don't forget to undo the change 
  once you're done with testing!

Once you use the local lightarti-rest-ios, you can modify the `lightarti-rest` and run
`make dev` whenever needed in `lightarti-rest`.

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

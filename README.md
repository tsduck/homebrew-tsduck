## Homebrew packaging for TSDuck

This repository is a _Homebrew Tap_ for TSDuck.

[Homebrew](https://brew.sh) is a package manager for open-source projects on macOS.
For end-users, TSDuck is installable on macOS systems using Homebrew only.

If you have never used Homebrew on your system, you can install it using:
```
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

The first command installs the _Xcode command line tools_; this is a prerequisite for Homebrew.
The second command installs Homebrew itself.

Before installing TSDuck for the first time, you must configure the _Homebrew tap_
containing TSDuck (let's say that a _tap_ is a repository of Homebrew packages).

```
brew tap tsduck/tsduck
```

Then, you can install TSDuck using:
```
brew install tsduck
```

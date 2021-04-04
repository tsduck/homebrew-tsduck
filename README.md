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
If you would like to install the lastest test version (HEAD version) use:
```
brew install --HEAD tsduck
```

After installation, to upgrade to latest version:
```
brew update
brew upgrade tsduck
```

When Homebrew upgrades packages, the old versions are not removed. The new versions
are just added. After a while, megabytes of outdated packages accumulate on disk.
To remove outdated packages:
```
brew cleanup
```

To uninstall TSDuck:
```
brew uninstall tsduck
```

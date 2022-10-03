Building clpAPI on macOS
========================

Building the clpAPI package in this fork works in the same traditional way that
most R binary packages are built.  To do so, though, the user must first
install the dependencies required, namely COIN-OR Clp itself.  This procedure
is explained below using a popular third-party package manager.

## Installing Homebrew

[Homebrew](https://brew.sh) is a popular package manager available for macOS
that is commonly used to install libraries and tools for developers.  Per the
instructions on [COIN-OR's Github pages](https://github.com/coin-or/Clp/blob/master/README.md),
the easiest way to install Clp is via Homebrew.  

To install Homebrew, one must simply follow the instructions on the
[home page](https://brew.sh) using a macOS Terminal window.  Once complete, a
new command will be available from the command line, *brew*.  Users should
run the following commands before getting started with installing Clp:

```
brew update
brew upgrade
```

These commands simply ensure that Homebrew and any software that it installed
is up to date.

## Acquiring COIN-OR Clp

After installing Homebrew, the Clp library and its dependencies can be
installed with one command from the command line:

```
brew install clp
```

After this command completes, Clp will be available for building the clpAPI
package.

## Acquiring clpAPI

This version of clpAPI is currently available on Github at:

https://github.com/ArmstrongJ/clpAPI

Users can either download the current version at the site above or clone the
git repo with the command:

```
git clone https://github.com/ArmstrongJ/clpAPI.git
```

## Building a Binary clpAPI Package from the Command Line

Building a binary package from the macOS command line is simple.  After
acquiring the clpAPI source from Github, the user should change directories 
to the location where the clpAPI directory is stored and run one of the 
following commands:

**If you cloned the GitHub repository:**
``` 
R CMD INSTALL --build clpAPI
```

**If you downloaded a zip file of the current version:**
```
R CMD INSTALL --build clpAPI-main
```

The build will be quick since this procedure is only compiling the R
extension, not the complete suite of Clp libraries. 

Once complete, there will be a file named *clpAPI_1.4.0.tgz* present in the
save directory as the clpAPI subdirectory.

## Caveats

The COIN-OR Clp libraries installed via Homebrew will be shared libraries.
The resultant binary package, therefore, will depend on these shared
libraries.  Furthermore, macOS's linker will hard-code the path to these
shared libraries into the resultant clpAPI shared library.  Because of the
way linking works on macOS, it may be problematic to share the binary package
with other users directly without first instructing them to install Homebrew
and its Clp package.

Most Homebrew users, however, will install Homebrew in its default directory:

**On Intel macOS:** */usr/local*

**On Apple Silicon macOS:** */opt/homebrew*

The hard-coded paths, therefore, will likely not be problematic.

Another distribution problem arises from Apple's macOS security.  Unsigned
and unnotarized software will, by default, *not* work on a macOS computer
where it wasn't originally built.  Therefore, to distribute a binary package
that is generally usable, it would have to be signed and notarized by a valid
Apple Developer.  This security measure makes the distribution of binary R
packages somewhat problematic.  

It should be noted that COIN-OR's Clp library cannot be built as a static
library for macOS.  The GNU Autotools build scripts in the COIN-OR packages 
will fail when a static build is requested because the tools will also 
attempt to compile static executables, which is not generally possible on 
macOS.  Additionally, using *coinbrew*, COIN-OR's recommended method for
building libraries, requires installing an upgraded Bash shell (which is easy
via Homebrew) because macOS ships an old, unsupported version at this time.

-- 
*Jeff Armstrong <jeff@approximatrix.com>*
*October 3, 2022*

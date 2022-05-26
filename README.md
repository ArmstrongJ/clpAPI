clpAPI
======

R Interface to C API of COIN-OR Clp, depends on COIN-OR Clp Version >= 1.12.0

## Building


Build clpAPI should be straightforward on most platforms using this version.
This R package depends on COIN-OR Clp and its requisite dependencies, which
may need to be installed separately depending on the host platform. Please 
see the instructions below for platform specifics:

### Windows

This fork of the clpAPI package will auto-build Clp and its dependencies on
Windows platforms using RTools and COIN-OR's *coinbrew* script.  It has been
tested with Clp master development branch and RTools 4.2.  The package can
simply be built from the RTools bash shell with the command:

```
R INSTALL clpAPI
```

Alternatively, if using RStudio, the user can simply select the **.tar.gz** 
file via *Install Packages* under the *Tools* menu.  As long as RTools are
installed, everything should "just work."

### GNU/Linux and *BSDs

The source package will install as long as the system already has a proper
version of COIN-OR Clp with its development libraries installed.  On Debian
and related derivatives, including Ubuntu, Linux Mint, and Raspberry Pi OS,
the package **coinor-libclp-dev** can be installed with:

```
apt install coinor-libclp-dev
```

or via a graphical tool.  On Fedora and RedHat, the appropriate package is
**coin-or-Clp-devel** and can be installed with:

```
dnf install coin-or-Clp coin-or-Clp-devel
```

On other systems, COIN-OR Clp may be available as a distribution-specific
package.  Alternatively, if the Bash shell is installed, 
[coinbrew](https://github.com/coin-or/coinbrew]) script can be used externally
to build from source.

Once COIN-OR Clp and its development libraries are installed, clpAPI can be
installed either via command line:

```
R INSTALL clpAPI
```

or from RStudio as a source package.

### macOS

The simplest, and officially recommended, way to install COIN-OR Clp is via
[Homebrew](https://brew.sh/), a common package system on macOS.  If Homebrew
is installed, the user can open a terminal and install Clp with the following
commands:

```
brew tap coin-or-tools/coinor
brew install coin-or-tools/coinor/clp
brew link --force coinutils
brew link --force clp
```

The *link* commands are necessary because some COIN-OR Clp and CoinUtils files
conflict with core Homebrew packages.  However, it should be safe in most cases
to force linking regardless.

Once the necessary COIN-OR packages are installed, clpAPI can be built and
installed with the command from within a macOS terminal:

```
R INSTALL clpAPI
```

Building directly from RStudio as a source package may not work (and absolutely
*will not* work on Apple Silicon) because the Homebrew system is not "configured" 
in the environment used by RStudio for building packages.  Specifically, 
Homebrew paths and library locations are configured in macOS *zsh* when a new
terminal pane is opened in macOS.  However, RStudio's build process does not 
actually execute the *zsh .zprofile* script when starting the build, meaning the 
clpAPI build process will not be able to locate the Clp and related COIN-OR 
libraries.  If installed from the macOS terminal, though, the clpAPI package will
be available from any R environment, including within RStudio.






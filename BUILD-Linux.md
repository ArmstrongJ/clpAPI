Building clpAPI on Linux
========================

Building the clpAPI package in this fork works in the same traditional way that
most R binary packages are built.  To do so, though, the user must first
install the dependencies required, namely COIN-OR Clp itself.  This procedure
is outlined below for most every Linux distribution.

For simplicity, the process of installing R itself and the distribution's C,
C++, and various development utilities is left to the user.

If you haven't installed R itself yet, you may want to skip to the *Addendum*
at the end of this document.  It discusses installing other necessary and
optional packages.

## Acquiring COIN-OR Clp

The clpAPI build on Linux requires that COIN-OR development libraries be
downloaded first.  This procedure can vary based on the Linux distribution in
use, but users are encouraged to use native packages distributed by their
Linux distribution when possible.  Options for popular Linux distributions
are outlined below:

### Clp for Debian- and Ubuntu-Based Systems

The Debian package repositories and downstream distributions' repositories,
including Ubuntu, Linux Mint, etc., provide Clp as a package named
*coinor-libclp-dev*.  Installing this package can be performed using
graphical package managers or, from the command line, using the command:

```
apt install coinor-libclp-dev
```

The above command will notably install all other necessary dependencies.

### Clp for Red Hat and Fedora

The Red Hat and Fedora repositories provide Clp as packages named
*coin-or-Clp* and *coin-or-Clp-devel*.  Both packages must be installed since
they do not actually depend on each other.  They can be installed via
graphical package manager or using the following command from the command
line:

```
dnf install coin-or-Clp coin-or-Clp-devel
```

### Other Distributions

Other Linux (and UNIX-like) distributions provide Clp via packages, and 
users should follow their distribution's instuctions for installing the 
packages:

Arch: *coin-or-clp*

OpenSUSE: *coin-or-Clp* (experimental)

FreeBSD: *coin-or-Clp*

### Manually Building Clp

Users can optionally build Clp from source, though the procedure is not
recommended.  The COIN-OR project provides a Bash shell script, *coinbrew*,
that can be downloaded from:

https://github.com/coin-or/coinbrew

Once the script is downloaded, it may be used to compile and install Clp with
the command:

```
sudo ./coinbrew -p /usr/local build Clp@stable/1.17
```

The *sudo* command is only necessary because we've set the installation
prefix to */usr/local*, a common location for user-built software.  Note that
the version in the above command is set to 1.17, the current release at the
time of this document's writing.  Please change the version accordingly.

## Acquiring clpAPI

This version of clpAPI is currently available on Github at:

https://github.com/ArmstrongJ/clpAPI

Users can either download the current version at the site above or clone the
git repo with the command:

```
git clone https://github.com/ArmstrongJ/clpAPI.git
```

## Building a Binary clpAPI Package from the Command Line

Building a binary package from the Linux command line is simple.  After
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

Once complete, there will be an archive file with named according to the
system's architecture.  On modern AMD- and Intel-powered machines, for
example, the archive will be *clpAPI_1.4.0_R_x86_64-pc-linux-gnu.tar.gz*.

## (Optional) Building with RStudio

The clpAPI binary package can also be built directly from RStudio.  The
process within RStudio is somewhat more automated:

1. Start RStudio and close any current project
2. Select "New Project..." from the File menu
3. Select "Version Control" from the New Project Wizard
4. Select "Git" from the Create Project from Version Control screen
5. Enter the following in each box:

    Repository URL: https://github.com/ArmstrongJ/clpAPI.git
    Project directory name: clpAPI
    
6. Select a parent directory via the Browse... button for the "subdirectory" box
7. Click the "Create Project" button
8. From the Build menu, select "Build Binary Package"

The resultant package will be named similar to the instructions for building
from the command line described above to reflect the system architecture for
which it was build.  On modern AMD- and Intel-powered machines, for
example, the archive will be *clpAPI_1.4.0_R_x86_64-pc-linux-gnu.tar.gz*.

## Caveats

The COIN-OR Clp libraries installed via almost any package manager or even
manually built using *coinbrew* will be shared libraries.  If we use the
default build mechanisms for clpAPI, the resultant shared library that is
present in the R binary package will **still be dependent on these 
system-wide Clp libraries**.  This build process does not "pull in" these
dependent libraries into the binary package.

If the Clp and related libraries are build using *coinbrew*, however, the
"--static" flag can be used with the *coinbrew* command to force building
static libraries.  If static libraries are instead used, the binary package
will actually include all dependencies.

Distributing Linux binaries, though, is more complex than simply using
*coinbrew* to build static versions.  The resultant clpAPI shared object will
still have further dependencies that may make distributing the binary package
prohibitively complicated.  Users really should build clpAPI for their system
from source each time due to C and C++ runtime dependencies, architecture
differences, etc.  

## Addendum - Installing Necessary Tools

Building and installing clpAPI requires a few necessary tools, and things
might be easier with some optional tools.  The following sections discuss
some additional steps that fall outside the scope of clpAPI.

When installing packages, users can either rely on a distribution's 
graphical tools or, alternatively, command line tools.  For example, two
common methods would be:

* Debian, Ubuntu, and derivatives: **sudo apt install <package name>**
* Fedora, and derivatives: **sudo dnf install <package name>**

Where *<package name>* can be replaced by the packages mentioned below.

### Necessity - R

Users will obviously need R installed to use clpAPI.  This package can be
found quickly on the following operating systems:

* Debian, Ubuntu, and derivatives: **r-base**
* Fedora, Red Hat, and derivatives: **R**

Other distributions will package R; it may just be named something unexpected.

One important note, however is that clpAPI requires R 4.2 or higher due to 
Windows build requirements, which may mean you'll need a newer version of R
than the default package.  Luckily, the R Project does supply instructions
for most major distributions at:

https://cloud.r-project.org/banner.shtml

The R Project provides a PPA for Ubuntu, notably.  Click on your listed Linux
distribution for the proper instructions.

### Necessity - C Compiler and Build Utilities

This package also needs a functioning C compiler and related build utilites.
There is a possibility that a clean Linux install doesn't have these installed
out-of-the-box, so the user might have to obtain them as well.  Installing
these necessities should be as easy as installing these packages on common
Linux distros:

* Debian, Ubuntu, and derivatives: **build-essential**
* Fedora, Red Hat, and derivatives: **make**, **gcc**, and **automake**

### Optional - Git

Git is mentioned as a common way to obtain clpAPI throughout the instructions.
That package is known as **git** on almost every modern platform.

### Optional - RStudio

RStudio can be used to either build a binary package of or locally install 
clpAPI.  RStudio for most Linux distributions can be downloaded from:

https://www.rstudio.com/products/rstudio/download/

Users should also check their system's package manager for versions of
RStudio that can be installed from repositories.

---

*Jeff Armstrong <jeff@approximatrix.com>*

*September 27, 2022*

*Revised March 3, 2023* - Addendum discussing support packages

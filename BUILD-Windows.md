Building clpAPI on Windows
==========================

This fork of the clpAPI package will auto-build Clp and its dependencies on
Windows platforms using RTools and COIN-OR's *coinbrew* script.  It has been
tested with Clp master development branch and Rtools 4.2.  

## Acquiring R and RTools

To use clpAPI, you need to install R 4.2 or newer and Rtools 4.2 or newer.
The R distribution for Windows is available at:

https://cran.r-project.org/bin/windows/base

And RTools is available at:

https://cran.r-project.org/bin/windows/Rtools

## (Optional) Acquiring RStudio

RStudio can be used to either build a binary package of or locally install 
clpAPI.  RStudio for Windows can be downloaded from:

https://www.rstudio.com/products/rstudio/download/

## Acquiring clpAPI

This version of clpAPI is currently available on Github at:

https://github.com/ArmstrongJ/clpAPI

Users can either download the current version at the site above or clone the
git repo with the command:

```
git clone https://github.com/ArmstrongJ/clpAPI.git
```

For Windows users, there is nothing more to download.

## Building a Binary clpAPI Package from Rtools

Building a binary package from within the Rtools Bash prompt, available in the
*Start* menu after installation as *Rtools42 Bash*, is simple.  After
acquiring the clpAPI source from Github, you can open the Rtools Bash prompt
and change directories to the location where the clpAPI directory is stored
and run one of the following commands:

**If you cloned the GitHub repository:**
``` 
R CMD INSTALL --build clpAPI
```

**If you downloaded a zip file of the current version:**
```
R CMD INSTALL --build clpAPI-main
```

The build command will take a significant amount of time because the build
process will download COIN-OR Clp source code and all its dependencies and
build those as well.  

Once complete, there will be a zip file name *clpAPI_1.4.0.zip* that will
contain **all** the necessary DLLs and R source code for clpAPI.

### Troubleshooting

One common issue with using the Rtools command line in Windows is that the R
command may not be on the system's path.  You might see the error:

```
-bash: R: command not found
```

The user just needs to, at least temporarily, add the R binary directory to
the path.  If R is installed in the default location, this can be resolved
with the following command:

```
export PATH=/c/Program\ Files/R/bin:$PATH
```

Note that this command will not persist; it will allow building a clpAPI
binary package during that Bash session only.

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

Again, the process of building clpAPI can be long depending on the specific
computer being used.  At the conclusion of the build, there should be a zip
file name *clpAPI_1.4.0.zip* in the project's parent directory.

---
*Jeff Armstrong <jeff@approximatrix.com>*
*September 20, 2022*

\name{getObjDirCLP}
\alias{getObjDirCLP}

\title{
  Retrieve Optimization Direction Flag
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_optimizationDirection}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  getObjDirCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{getObjDir} which calls
  the COIN-OR Clp function \code{Clp_optimizationDirection}.
}

\value{
  Returns the optimization direction flag: 1: minimize,
  -1: maximize, 0: ignore.
}

\references{
   The COIN-OR Clp home page at
   \url{http://www.coin-or.org/projects/Clp.xml}
}

\author{
  Gabriel Gelius-Dietrich

  Maintainer: Gabriel Gelius-Dietrich <geliudie@uni-duesseldorf.de>
}

\keyword{ optimize }


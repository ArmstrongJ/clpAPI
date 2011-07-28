\name{setObjDirCLP}
\alias{setObjDirCLP}

\title{
  Set/Change Optimization Direction Flag
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_setOptimizationDirection}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  setObjDirCLP(lp, lpdir)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
  \item{lpdir}{
    Optimization direction flag: 1: minimize, -1: maximize,
    0: ignore.
  }
}

\details{
  Interface to the C function \code{setObjDir} which calls
  the COIN-OR Clp function \code{Clp_setOptimizationDirection}.
}

\value{
  NULL
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


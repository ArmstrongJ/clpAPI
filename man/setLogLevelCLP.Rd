\name{setLogLevelCLP}
\alias{setLogLevelCLP}

\title{
  Set the Amount of Output to STDOUT
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_setLogLevel}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  setLogLevelCLP(lp, amount)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
  \item{amount}{
    Log level flag: 0: nothing, 1: just final, 2: just
    factorizations, 3: as 2 plus a bit more, 4: verbose.
  }
}

\details{
  Interface to the C function \code{setLogLevel} which calls
  the COIN-OR Clp function \code{Clp_setLogLevel}.
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


\name{idiotCLP}
\alias{idiotCLP}

\title{
  Solve LP Problem with the idiot Code
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_idiot}. Consult the COIN-OR Clp documentation
  for more detailed information.
}

\usage{
  idiotCLP(lp, thd = 0)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
  \item{thd}{
    An integer value.
  }
}

\details{
  Interface to the C function \code{idiot} which calls
  the COIN-OR Clp function \code{Clp_idiot}.
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


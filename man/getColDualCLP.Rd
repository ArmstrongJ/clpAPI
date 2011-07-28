\name{getColDualCLP}
\alias{getColDualCLP}

\title{
  Retrieve all Column Dual Values
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_dualColumnSolution}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  getColDualCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{getColDual} which calls
  the COIN-OR Clp functions \code{Clp_numberColumns} and
  \code{Clp_dualColumnSolution}.
}

\value{
  Returns all dual values of the stuctural variables as a numeric vector.
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


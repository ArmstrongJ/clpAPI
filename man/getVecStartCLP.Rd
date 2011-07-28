\name{getVecStartCLP}
\alias{getVecStartCLP}

\title{
  Retrieve Column Starts in Constraint Matrix
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_getVectorStarts}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  getVecStartCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{getVecStart} which calls
  the COIN-OR Clp functions \code{Clp_numberColumns} and
  \code{Clp_getVectorStarts}.
}

\value{
  An integer vector containing the column starts in
  the constraint matrix.
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


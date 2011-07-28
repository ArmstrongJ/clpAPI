\name{getColLowerCLP}
\alias{getColLowerCLP}

\title{
  Retrieve Column Lower Bound
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_columnLower}. Consult the COIN-OR Clp documentation
  for more detailed information.
}

\usage{
  getColLowerCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{getColLower} which calls
  the COIN-OR Clp functions \code{Clp_numberColumns} and
  \code{Clp_columnLower}.
}

\value{
  The lower bounds of the models columns (the corresponding
  structural variables) are returned.
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


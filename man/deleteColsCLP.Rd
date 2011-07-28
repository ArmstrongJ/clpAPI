\name{deleteColsCLP}
\alias{deleteColsCLP}
\alias{Clp_deleteColumns}

\title{
  Delete Columns
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_deleteColumns}. Consult the COIN-OR Clp documentation
  for more detailed information.
}

\usage{
  deleteColsCLP(lp, ncols, j)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
  \item{ncols}{
    Number of columns to delete.
  }
  \item{j}{
    Vector of column indices to delete.
  }
}

\details{
  Interface to the C function \code{deleteCols} which calls
  the COIN-OR Clp function \code{Clp_deleteColumns}.
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


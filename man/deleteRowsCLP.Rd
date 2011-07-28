\name{deleteRowsCLP}
\alias{deleteRowsCLP}
\alias{Clp_deleteRows}

\title{
  Delete Rows
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_deleteRows}. Consult the COIN-OR Clp documentation
  for more detailed information.
}

\usage{
  deleteRowsCLP(lp, nrows, i)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
  \item{nrows}{
    Number of rows to delete.
  }
  \item{i}{
    Vector of row indices to delete.
  }
}

\details{
  Interface to the C function \code{deleteRows} which calls
  the COIN-OR Clp function \code{Clp_deleteRows}.
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


\name{getSolStatusCLP}
\alias{getSolStatusCLP}

\title{
  Retrieve the Solution Status
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_status}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  getSolStatusCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{getSolStatus} which calls
  the COIN-OR Clp function \code{Clp_status}.
}

\value{
  The solution status: 0: optimal, 1: primal infeasible,
  2: dual infeasible, 3: stopped on iterations etc,
  4: stopped due to errors.
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


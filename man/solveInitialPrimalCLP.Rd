\name{solveInitialPrimalCLP}
\alias{solveInitialPrimalCLP}

\title{
  Solve LP Problem with the Initial Primal Simplex Method
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_initialPrimalSolve}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  solveInitialPrimalCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{solveInitialPrimal}
  which calls the COIN-OR Clp function
  \code{Clp_initialPrimalSolve}.
}

\value{
  A return code.
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


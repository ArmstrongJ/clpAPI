\name{solveInitialDualCLP}
\alias{solveInitialDualCLP}

\title{
  Solve LP Problem with the Initial Dual Simplex Method
}

\description{
  Low level interface function to the COIN-OR Clp function
  \code{Clp_initialDualSolve}. Consult the COIN-OR Clp
  documentation for more detailed information.
}

\usage{
  solveInitialDualCLP(lp)
}

\arguments{
  \item{lp}{
    A pointer to a COIN-OR Clp problem object.
  }
}

\details{
  Interface to the C function \code{solveInitialDual}
  which calls the COIN-OR Clp function
  \code{Clp_initialDualSolve}.
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


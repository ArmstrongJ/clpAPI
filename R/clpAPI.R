#------------------------------------------------------------------------------#
#                           R interface to COIN-OR Clp                         #
#------------------------------------------------------------------------------#

#  clpAPI.R
#  R interface to COIN-OR Clp.
#
#  Copyright (C) 2011 Gabriel Gelius-Dietrich, Department for Bioinformatics,
#  Institute for Informatics, Heinrich-Heine-University, Duesseldorf, Germany.
#  All right reserved.
#  Email: geliudie@uni-duesseldorf.de
#
#  This file is part of clpAPI.
#
#  ClpAPI is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  ClpAPI is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with clpAPI  If not, see <http://www.gnu.org/licenses/>.


#------------------------------------------------------------------------------#
#                                  the interface                               #
#------------------------------------------------------------------------------#


#------------------------------------------------------------------------------#

delProbCLP <- function(lp) {

    invisible(.Call("delProb", lp, PACKAGE = "clpAPI"))

}


#------------------------------------------------------------------------------#

initProbCLP <- function() {
    return(.Call("initProb", PACKAGE = "clpAPI"))
}


#------------------------------------------------------------------------------#

setObjDirCLP <- function(lp, lpdir) {

    invisible(
        .Call("setObjDir", PACKAGE = "clpAPI",
              lp,
              as.numeric(lpdir)
        )
    )

}


#------------------------------------------------------------------------------#

getObjDirCLP <- function(lp) {

    lpdir <- .Call("getObjDir", PACKAGE = "clpAPI",
                   lp
                  )
    return(lpdir)

}


#------------------------------------------------------------------------------#

resizeCLP <- function(lp, nrows, ncols) {

    invisible(
        .Call("resize", PACKAGE = "clpAPI",
              lp,
              as.integer(nrows),
              as.integer(ncols)
        )
    )

}


#------------------------------------------------------------------------------#

deleteRowsCLP <- function(lp, nrows, i) {

    invisible(
        .Call("deleteRows", PACKAGE = "clpAPI",
              lp,
              as.integer(nrows),
              as.integer(i)
        )
    )

}


#------------------------------------------------------------------------------#

deleteColsCLP <- function(lp, ncols, j) {

    invisible(
        .Call("deleteCols", PACKAGE = "clpAPI",
              lp,
              as.integer(ncols),
              as.integer(j)
        )
    )

}


#------------------------------------------------------------------------------#

addRowsCLP <- function(lp, nrows, lb, ub, rowst, cols, val) {

    invisible(
        .Call("addRows", PACKAGE = "clpAPI",
              lp,
              as.integer(nrows),
              as.numeric(lb),
              as.numeric(ub),
              as.integer(rowst),
              as.integer(cols),
              as.numeric(val)
        )
    )

}


#------------------------------------------------------------------------------#

addColsCLP <- function(lp, ncols, lb, ub, obj, colst, rows, val) {

    invisible(
        .Call("addCols", PACKAGE = "clpAPI",
              lp,
              as.integer(ncols),
              as.numeric(lb),
              as.numeric(ub),
              as.numeric(obj),
              as.integer(colst),
              as.integer(rows),
              as.numeric(val)
        )
    )

}


#------------------------------------------------------------------------------#

getNumRowsCLP <- function(lp) {

    nrows <- .Call("getNumRows", PACKAGE = "clpAPI",
                   lp
                  )
    return(nrows)

}


#------------------------------------------------------------------------------#

getNumColsCLP <- function(lp) {

    ncols <- .Call("getNumCols", PACKAGE = "clpAPI",
                   lp
                  )
    return(ncols)

}


#------------------------------------------------------------------------------#

chgObjCoefsCLP <- function(lp, objCoef) {

    invisible(
        .Call("chgObjCoefs", PACKAGE = "clpAPI",
              lp,
              as.numeric(objCoef)
        )
    )

}


#------------------------------------------------------------------------------#

getObjCoefsCLP <- function(lp) {

    objCoefs <- .Call("getObjCoefs", PACKAGE = "clpAPI",
                   lp
                  )
    return(objCoefs)

}


#------------------------------------------------------------------------------#

chgRowLowerCLP <- function(lp, rlb) {

    invisible(
        .Call("chgRowLower", PACKAGE = "clpAPI",
              lp,
              as.numeric(rlb)
        )
    )

}


#------------------------------------------------------------------------------#

getRowLowerCLP <- function(lp) {

    rlb <- .Call("getRowLower", PACKAGE = "clpAPI",
                   lp
                  )
    return(rlb)

}


#------------------------------------------------------------------------------#

chgRowUpperCLP <- function(lp, rub) {

    invisible(
        .Call("chgRowUpper", PACKAGE = "clpAPI",
              lp,
              as.numeric(rub)
        )
    )

}


#------------------------------------------------------------------------------#

getRowUpperCLP <- function(lp) {

    rub <- .Call("getRowUpper", PACKAGE = "clpAPI",
                   lp
                  )
    return(rub)

}


#------------------------------------------------------------------------------#

chgColLowerCLP <- function(lp, lb) {

    invisible(
        .Call("chgColLower", PACKAGE = "clpAPI",
              lp,
              as.numeric(lb)
        )
    )

}


#------------------------------------------------------------------------------#

getColLowerCLP <- function(lp) {

    lb <- .Call("getColLower", PACKAGE = "clpAPI",
                   lp
                  )
    return(lb)

}


#------------------------------------------------------------------------------#

chgColUpperCLP <- function(lp, ub) {

    invisible(
        .Call("chgColUpper", PACKAGE = "clpAPI",
              lp,
              as.numeric(ub)
        )
    )

}


#------------------------------------------------------------------------------#

getColUpperCLP <- function(lp) {

    ub <- .Call("getColUpper", PACKAGE = "clpAPI",
                   lp
                  )
    return(ub)

}


#------------------------------------------------------------------------------#

loadProblemCLP <- function(lp, ncols, nrows, ia, ja, ra,
                           lb = NULL, ub = NULL,
                           obj_coef = NULL, rlb = NULL, rub = NULL) {

    if (is.null(lb)) {
        Clb <- as.null(lb)
    }
    else {
        Clb <- as.numeric(lb)
    }

    if (is.null(ub)) {
        Cub <- as.null(ub)
    }
    else {
        Cub <- as.numeric(ub)
    }

    if (is.null(obj_coef)) {
        Cobj_coef <- as.null(obj_coef)
    }
    else {
        Cobj_coef <- as.numeric(obj_coef)
    }

    if (is.null(rlb)) {
        Crlb <- as.null(rlb)
    }
    else {
        Crlb <- as.numeric(rlb)
    }

    if (is.null(rub)) {
        Crub <- as.null(rub)
    }
    else {
        Crub <- as.numeric(rub)
    }

    invisible(
        .Call("loadProblem", PACKAGE = "clpAPI",
              lp,
              as.integer(ncols),
              as.integer(nrows),
              as.integer(ia),
              as.integer(ja),
              as.numeric(ra),
              Clb,
              Cub,
              Cobj_coef,
              Crlb,
              Crub
#               as.numeric(lb),
#               as.numeric(ub),
#               as.numeric(obj_coef),
#               as.numeric(rlb),
#               as.numeric(rub)
        )
    )

}


#------------------------------------------------------------------------------#

loadMatrixCLP <- function(lp, ncols, nrows, ia, ja, ra) {

    invisible(
        .Call("loadMatrix", PACKAGE = "clpAPI",
              lp,
              as.integer(ncols),
              as.integer(nrows),
              as.integer(ia),
              as.integer(ja),
              as.numeric(ra)
        )
    )

}


#------------------------------------------------------------------------------#

getNumNnzCLP <- function(lp) {

    nnz <- .Call("getNumNnz", PACKAGE = "clpAPI",
                   lp
                  )
    return(nnz)

}


#------------------------------------------------------------------------------#

getVecStartCLP <- function(lp) {

    vec_start <- .Call("getVecStart", PACKAGE = "clpAPI",
                   lp
                  )
    return(vec_start)

}


#------------------------------------------------------------------------------#

getIndCLP <- function(lp) {

    index <- .Call("getInd", PACKAGE = "clpAPI",
                   lp
                  )
    return(index)

}


#------------------------------------------------------------------------------#

getVecLenCLP <- function(lp) {

    vec_len <- .Call("getVecLen", PACKAGE = "clpAPI",
                   lp
                  )
    return(vec_len)

}


#------------------------------------------------------------------------------#

getNnzCLP <- function(lp) {

    n_elem <- .Call("getNnz", PACKAGE = "clpAPI",
                   lp
                  )
    return(n_elem)

}


#------------------------------------------------------------------------------#

printModelCLP <- function(lp, prefix = "CLPmodel") {

    invisible(
        .Call("printModel", PACKAGE = "clpAPI",
              lp,
              as.character(prefix)
        )
    )

}


#------------------------------------------------------------------------------#

setLogLevelCLP <- function(lp, amount) {

    invisible(
        .Call("setLogLevel", PACKAGE = "clpAPI",
              lp,
              as.integer(amount)
        )
    )

}


#------------------------------------------------------------------------------#

getLogLevelCLP <- function(lp) {

    amount <- .Call("getLogLevel", PACKAGE = "clpAPI",
                   lp
                  )
    return(amount)

}


#------------------------------------------------------------------------------#

scaleModelCLP <- function(lp, mode) {

    invisible(
        .Call("scaleModel", PACKAGE = "clpAPI",
              lp,
              as.integer(mode)
        )
    )

}


#------------------------------------------------------------------------------#

getScaleFlagCLP <- function(lp) {

    flag <- .Call("getScaleFlag", PACKAGE = "clpAPI",
                   lp
                  )
    return(flag)

}


#------------------------------------------------------------------------------#

solveInitialCLP <- function(lp) {

    ret <- .Call("solveInitial", PACKAGE = "clpAPI",
                   lp
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

solveInitialDualCLP <- function(lp) {

    ret <- .Call("solveInitialDual", PACKAGE = "clpAPI",
                   lp
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

solveInitialPrimalCLP <- function(lp) {

    ret <- .Call("solveInitialPrimal", PACKAGE = "clpAPI",
                   lp
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

solveInitialBarrierCLP <- function(lp) {

    ret <- .Call("solveInitialBarrier", PACKAGE = "clpAPI",
                   lp
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

solveInitialBarrierNoCrossCLP <- function(lp) {

    ret <- .Call("solveInitialBarrierNoCross", PACKAGE = "clpAPI",
                   lp
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

dualCLP <- function(lp, ifValP = 0) {

    ret <- .Call("dual", PACKAGE = "clpAPI",
                   lp,
                   as.integer(ifValP)
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

primalCLP <- function(lp, ifValP = 0) {

    ret <- .Call("primal", PACKAGE = "clpAPI",
                   lp,
                   as.integer(ifValP)
                  )
    return(ret)

}


#------------------------------------------------------------------------------#

idiotCLP <- function(lp, thd = 0) {

    invisible(
        .Call("idiot", PACKAGE = "clpAPI",
              lp,
              as.integer(thd)
        )
    )

}


#------------------------------------------------------------------------------#

getSolStatusCLP <- function(lp) {

    stat <- .Call("getSolStatus", PACKAGE = "clpAPI",
                   lp
                  )
    return(stat)

}


#------------------------------------------------------------------------------#

getObjValCLP <- function(lp) {

    obj <- .Call("getObjVal", PACKAGE = "clpAPI",
                   lp
                  )
    return(obj)

}


#------------------------------------------------------------------------------#

getColPrimCLP <- function(lp) {

    col_prim <- .Call("getColPrim", lp, PACKAGE = "clpAPI")

    return(col_prim)

}


#------------------------------------------------------------------------------#

getColDualCLP <- function(lp) {

    col_dual <- .Call("getColDual", lp, PACKAGE = "clpAPI")

    return(col_dual)

}


#------------------------------------------------------------------------------#

getRowPrimCLP <- function(lp) {

    row_prim <- .Call("getRowPrim", lp, PACKAGE = "clpAPI")

    return(row_prim)

}


#------------------------------------------------------------------------------#

getRowDualCLP <- function(lp) {

    row_dual <- .Call("getRowDual", lp, PACKAGE = "clpAPI")

    return(row_dual)

}


#------------------------------------------------------------------------------#

delRowsCLP <- function(lp, num, i) {

    invisible(
        .Call("delRows", PACKAGE = "clpAPI",
              lp,
              as.integer(num),
              as.integer(i)
        )
    )

}


#------------------------------------------------------------------------------#

delColsCLP <- function(lp, num, j) {

    invisible(
        .Call("delCols", PACKAGE = "clpAPI",
              lp,
              as.integer(num),
              as.integer(j)
        )
    )

}


#------------------------------------------------------------------------------#

readMPSCLP <- function(lp, fname, keepNames = TRUE, ignoreErrors = FALSE) {

    check <- .Call("readMPS", PACKAGE = "clpAPI",
                   lp,
                   as.character(fname),
                   as.integer(keepNames),
                   as.integer(ignoreErrors)
                  )
    return(check)

}


#------------------------------------------------------------------------------#

saveModelCLP <- function(lp, fname) {

    check <- .Call("saveModel", PACKAGE = "clpAPI",
                   lp,
                   as.character(fname)
                  )
    return(check)

}


#------------------------------------------------------------------------------#

restoreModelCLP <- function(lp, fname) {

    check <- .Call("restoreModel", PACKAGE = "clpAPI",
                   lp,
                   as.character(fname)
                  )
    return(check)

}




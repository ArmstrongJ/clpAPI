
# example from https://github.com/coin-or/Clp/blob/8294096126013ae16a6b48768c2d31c337822c64/src/unitTest.cpp#L2562
test_that("quadratic objective matches C++ output", {
  qp = initProbCLP()

  status = readMPSCLP(qp, test_path("testdata", "exmip1.mps"))
  expect_equal(status, 0)

  ncols <- getNumColsCLP(qp)
  start <- rep(0, ncols+1)
  col <- rep(0, ncols)
  element <- rep(0.0, ncols)
  
  n = 0
  for(i in 1:ncols) {
    if(i >= ncols) {
      col[n] = i
      element[n] = 0.1
      
      n = n + 1
    }
    start[i+1] = n
  }
  
  loadQuadraticObjectiveCLP(qp, ncols, start, col, element)
  res = primalCLP(qp, 0) 
  expect_equal(res, 0)
  expect_equal(getObjValCLP(qp), 3.2368421, tolerance=0.0001)
})

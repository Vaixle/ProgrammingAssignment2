## This function gets the matrix argument and stores data about it 
##and this function can do four actions.
##Values:
##value makeMatrix stores matrix
##value solveMatrix stores result action solve
##Actions:
##set() stores matrix
##get() getting saved matrix
##setSolve() sets value of action solve to value solveMatrix
##getSolve() getting value of solveMatrix
makeCacheMatrix<- function(makeMatrix=matrix()){
  makeMatrix
  solveMatrix = NULL
  set= function(x){makeMatrix<<-x
  solveMatrix<<-NULL
  }
  get= function() makeMatrix
  setSolve =function(solveMatrix) solveMatrix<<-solveMatrix
  getSolve= function() solveMatrix
  list(set=set,get=get,setSolve=setSolve,getSolve=getSolve)
}

## This function gets the makeCacheMatrix argument and compute solve and
##saves result to solveMatrix or return cahing value of solveMatrix.
##She can use all action from makeCacheMatrix
cacheSolve<-function(makeMatrix){
  solveMatrix<-makeMatrix$getSolve()
  if(!is.null(solveMatrix)){
    message("getting cached data")
    return(solveMatrix)
  }
  data<-makeMatrix$get()
  solveMatrix<-solve(data)
  makeMatrix$setSolve(solveMatrix)
  solveMatrix
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL #setting inverse to Null
  
  set <- function(y) {
    ## define a function to set the matrix
    x<<-y
    inverse<<-NULL
  }
  get<-function() x # define a function to get the matrix
  
  setinverse<-function(inverseMatrix) inverse<<- inverseMatrix # function to set the inverse
  
  getinverse<-function() inverse # function to get the inverse
  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse<-x$getinverse()
  if (!is.null(inverse)) {
    #check if the inverse is already 
      message("getting cahe data")
      return(inverse)
  }
  
  data<-x$get()
  inverse<-solve(data)
  x$setinverse(inverse)
  inverse
  
  
  
}

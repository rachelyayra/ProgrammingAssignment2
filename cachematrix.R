## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set<- function(y){
    x<<- y
    i<<- NULL
  }
  get<- function(){
    x
  }
  getinverse<- function(){
    i
  }
  setinverse<- function(inverse){
    i<<-inverse
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
##This function returns the cached inverse or calculates an inverse if the inverse is NULL. 
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached inverse")
    return(i)
  }
  data<- x$get()
  i <-solve(data)
  x$setinverse(i)
  i
}


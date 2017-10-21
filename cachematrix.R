## Put comments here that give an overall description of what your
## functions do
## The function creates a special "matrix" object that can cache its invesre 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	 inv <- NULL
    set <- function(y){
     x <<- y
     inv <<- NULL


}
get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the invesrse of the special "matrix" returned by makeCacheMatrix on the first question. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}

## Just trying to submit my assignment





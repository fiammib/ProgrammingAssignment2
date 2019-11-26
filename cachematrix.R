## R Programming course week 3 assignment - fiammib

## Function 1, below, creates a matrix object that caches the inverse of itself
## Function 1:

makeCacheMatrix <- function(x = matrix()) {

}


## Function 2 computes the inverse of the matrix returned by makeCacheMatrix above.
## If the inverse already exists, then cacheSolve will retrieve the cached version
## Function 2:

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

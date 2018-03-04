## This file contains two functions. One to create a cache for the matrix with the basic functions and 
## the other function to retrieve from cache / compute and store in cache


## get, set matrix value. get, set inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
            x <<- y
          inv <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() inv
      list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## get inverse of the matrix if its already available in cacehe else compute using solve, store in cache and return 
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
      if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
      data <- x$get()
      inv <- solve(data)
      x$setinverse(inv)
      inv
}


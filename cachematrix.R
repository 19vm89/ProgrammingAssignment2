## Creating a matrix and calculating the inverse of it is if not available from cache


## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Skips the computation if it gets the inverse of a matrix from cache
## Computes the inverse of a matrix if not available in cache

cacheSolve <- function(x, ...) {
     inv <- x$getinverse()
     if(!is.null(inv)){
         message("getting cached data.")
         return(inv)
     }
     data <- x$get()
     inv <- solve(data)
     x$setinverse(inv)
     ## Return a matrix that is the inverse of 'x'
     inv
        
}

##caching the inverse of a matrix

## the same as above

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- HULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- slove
    getsolve <- function() m
    list (set = set, get = get,
          setsolve = setsolve,
          getsolve = getsolve)
        
}


## caculating the invertible matrix

cacheSolve <- function(x, ...) {
       m <- x$getsolve()
       if(!is.null(m)){
           message('getting cached data')
           return(m)
           
       }
       data <- x$get()
       m <- solve(data, ...)
       x$setsolve(m)
       m
}

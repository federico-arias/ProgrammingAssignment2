## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function test1

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setmean <- function(inverse) i <<- inverse
  getmean <- function() i
  list(set = set, get = get,
       setinverse = setmean,
       getinverse = getmean)
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  matrix <- x$get()
  i <- solve(matrix)
  x$setinverse(i)
  i
}

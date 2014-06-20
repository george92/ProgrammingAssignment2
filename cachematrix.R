## two functions are used to create a special object that stores a matrix and cache's its inverse.

## 1.the first function is used to create a special "object"

makeCacheMatrix <- function(x = matrix()) {

invs <- NULL
set <- function(y){
  x <<- y
  invs <<- NULL
}
get <- function() x
setinverse <- function(inverse) invs <<- inverse
getinverse <- function() invs

list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## 2.the second function is used to calculate the inverse 

cacheSolve <- function(x, ...) {

inv <- x$getinverse()
if( !is.null(invs) ){
  message("getting cached data")
  return(invs)
}
data <- x$get()
invs <- solve(data, ...)
x$setinverse(invs)

invs
}

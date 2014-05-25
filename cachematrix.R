## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { #defining structure
  i <- NULL #init valye
  set <- function(y) { #set function
    x <<- y #set init value
    i <<- NULL #set init value
  }
  get <- function() x #define get function 
  setinverse <- function(inverse) i <<- inverse #define setinverse function
  getinverse <- function() i #define getinverse funciton
  list(set = set, get = get, #list as result
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) { #defining fucntion to get inverse
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...) #use standart function
  x$setinverse(i) #set value we get
  return(i) #return value
}

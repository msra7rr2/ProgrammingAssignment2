## makeCacheMatric creates a special matrix m, where x is an ordinary matrix. 
##You can get the value with the get() function, change the value
##with set() function, where y is an ordinary matrix. 
##You can get the inverse with cacheSolve function.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
# Define function to set the value of the matrix. It also clears the old
# inverse from the cache
set <- function(y) {
  x <<- y
  m <<- NULL
}
# Define function to get the value of the matrix
  get <- function() x
  # Define function to set the inverse. This is only used by getinverse() when
  # there is no cached inverse
  setInverse <- function() m <<- inverse
  # Define function to get the inverse
  getInverse <- function() m
  
  # Return a list with the above four functions

  list(set = set, get = get,
       setInverse = getInvesrse.
       getInverse = getInverse)
  
  # Return a list with the above four functions
  
}

## Return inverse of matrix x.
##This function computes the inverse of the special matrix
##returned by makeCacheMatrix. 

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse() #this fetches the cached value of the inverse
  if(!is.null(m)) { #if the cache was not empty, we can just return in
    message("getting cached data")
    return(m)
  }
  #The cache was empty. We need to calculate it, cache it, and then return in
  data <- x$get() #get value of matrix
  m <- solve(data) #calculate the inverse
  x$setInverse(m) #cache the results
  m #return the inverse
}

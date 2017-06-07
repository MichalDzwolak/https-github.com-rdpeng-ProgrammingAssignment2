
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Function creates a list with four functions: set, get, setInverse and getInverse 
## which will be used in next function to generate inverse matrix.

makeCacheMatrix <- function(x=matrix()){
  
  inv <-NULL
  
  set <-function(y){
    
    x <<- y  
    
    inv <<- NULL 
  }
  
  get <-function() x
 
   
  setInverse <- function(solve) inv <<- solve 
  
  getInverse <- function() inv
  
  list(set = set, 
       get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function

This function uses functions from a list created before and creates inverse of matrix. Before tests if inv if not null.  

cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if (!is.null(inv)){
    
    message("getting cached data")
    return(inv)
      
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setInverse(inv)
  inv
}

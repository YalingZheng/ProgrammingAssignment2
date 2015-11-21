## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

matrixcacheenv <- new.env()
 
## Write a short comment describing this function
 
makeCacheMatrix <- function(x = matrix()) {
         m <- solve(x)
         strx <- toString(x)
         matrixcacheenv[[strx]] <- m
         return(m)
 }
 
 
 ## Write a short comment describing this function
 
 cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
         if (exists(toString(x), matrixcacheenv)){
            message("Getting Cached Data")
            m <- get(toString(x), matrixcacheenv)
            return(m)
         }
         return(makeCacheMatrix(x))
 }
 
 B = matrix(c(1,2,3,4), nrow=2, ncol=2)
 
 cacheSolve(B)
 
 cacheSolve(B)

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
 m <-NULL
      set <- function(y){
      x <<-y
      m <<- NULL
}
get <- function() x
setinv <- function(inv) m <<- inv
getinv <- function() m
list(set=set,get=get,setinv=setinv,getinv=getinv)
=======
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7

}


## Write a short comment describing this function

<<<<<<< HEAD
cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinv(m)
        m
=======
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}

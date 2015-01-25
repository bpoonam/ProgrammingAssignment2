## 1.set the value of the matrix
## 2.get the valure of the matrix
## 3.set the value of inverse of the matrix
## 4.get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

 m <-NULL
      set <- function(y){
      x <<-y
      m <<- NULL
}
get <- function() x
setinv <- function(inv) m <<- inv
getinv <- function() m
list(set=set,get=get,setinv=setinv,getinv=getinv)


}


## This function returns the inverse of the matrix
## it first checks if the inverse has already been cached
##if so, it gets the result and prints the cached data with comment of "getting cached data"
## otherwise, it will compute the inverse, sets the value in the cache via set inverse function and retunrns the result.


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

}

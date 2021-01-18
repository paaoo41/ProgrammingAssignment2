## Overall description of what your
## functions do
## This is for the Week 3 Peer-graded Assignment: Programming Assignment 2: Lexical Scoping
## GitHub user: paaoo41

makeCacheMatrix <- function(x = matrix()) {   
## This function serves as matrix object and created to cache its inverse        

        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x                             ##The get function - returns its value of matrix argument
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,                      ##In this list, it assigns value of inv from its parent environment 
             setinverse = setinverse,                   ##As 
             getinverse = getinverse)                    
}


## Short comment about this function
## Basically it calculates the inverse of the special matrix return by makeCachematrix that is programmed above.
cacheSolve <- function(x, ...) {
        ## Basically it returns the matrix that is the inverse of x 
		i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}

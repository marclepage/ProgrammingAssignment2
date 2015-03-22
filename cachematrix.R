## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## build on mean example, using matrix instead of numeric vector. 

makeCacheMatrix <- function(x = matrix()) {
    ## null & cache assignments
	i<-NULL
	set<-function(n){
	  x<<-n
	  i<<-NULL
	}
	## setters & getters
	get<-function() x
	s<-function(z) i<<- inv
	g<-function() i
	list(set=set, get=get, s=s, g=g) 
	
}## End Function


## Write a short comment describing this function
## Use solve function to return inverse.

cacheSolve <- function(x, ...) {
	## Loop through, return from cache if available. 
	i<-x$g()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	
	dat <-x$get()
	i<- solve(dat)
	x$s(i)
	i
	}
}## End Function

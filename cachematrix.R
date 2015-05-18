## Coursera R Progr  Assignment 2
## using cache 

makeCacheMatrix <- function(x = matrix()) {
    ## makeCacheMatrix contains functions used to set and retrieve cache 
    m<-NULL
    set<-function(y){
         ## reset the super assignments
         x<<-y
         m<<-NULL
     }
    get<-function() x
    setmatrix<-function(solve) m<<- solve
    getmatrix<-function() m
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
} 

 cacheSolve <- function(x, ...) { 
  ## Return a matrix that is the inverse of the matrix 'x' 
  ## we assume the matrix has an inverse
     m<-x$getmatrix()
     if(!is.null(m)){
        message("getting cached data")
     }
     else {
        matrx<-x$get()
        m<-solve(matrx, ...)
        x$setmatrix(m)
     } 
     m
}

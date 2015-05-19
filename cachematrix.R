## Coursera R Progr  Assignment 2
## using cache 

makeCacheMatrix <- function(x = matrix()) {
  ## makeCacheMatrix contains functions used to set and retrieve cache 
  inv_mat<-NULL

  set<-function(y){
    ## reset the super assignments
    ## the matix is reset to y
    ## the mean (m) is reset to NULL
    x<<-y
    inv_mat<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) inv_mat <<- solve
  getmatrix<-function() inv_mat
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
} 

cacheSolve <- function(x, ...) { 
  ## Return a matrix that is the inverse of the matrix 'x' 
  ## we assume the matrix has an inverse
  
  ## inv_mat <- the inverse of x 
  inv_mat<-x$getmatrix()
  if(!is.null(inv_mat)){
    message("getting cached data")
    inv_mat
  }
  
    matr<-x$get()
    inv_mat<-solve(matr, ...)
    x$setmatrix(inv_mat)
    inv_mat
}

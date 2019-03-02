
 

MakeCacheMatrix<-function(mtrix=matrix()){
i<-NULL
set<-function(inputmatrix)
{mtrix<<-inputmatrix
i<<-NULL
}
getm<-function() mtrix 
setinv<-function(inverse) i <<-inverse
getinv<-function() i
list(set=set, getm=getm, setinv=setinv, getinv=getinv)
}

CacheSolve <- function(mtrix, ...) {
  i <- mtrix$getinv()
  if(!is.null(i)) {
    message("get cached data.")
    return(i)
  }
  data <- mtrix$getm()
  i <- solve(data)
  mtrix$setinv(i)
  i 
}

 

 

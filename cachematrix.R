## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invertedmatrix <- solve(x)
y <<- x
cachedinversematrix <<- invertedmatrix
invertedmatrix
}


## Write a short comment describing this function

cacheSolve <- function(x = matrix()) {
if (!exists('y')) {
		invmatrix <- solve(x)
		cachedinversematrix <<- invmatrix
		y <<- x
	}
else { 	
		if (exists('cachedinversematrix')) {
				if (identical(x,y)) {
					invmatrix <- cachedinversematrix
				}
				else {
					invmatrix <- solve(x)
					cachedinversematrix <<- invmatrix
					y <<- x

				}
		}
		else {
				invmatrix <- solve(x)
				cachedinversematrix <<- invmatrix
				y <<- x

		}
	}

invmatrix     
}

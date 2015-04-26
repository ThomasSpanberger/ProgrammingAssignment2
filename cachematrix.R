## makeCacheMatrix calculates an inverted matrix to the supplied matrix, and 
## caches both the supplied and the inverted matrix
 
## This function calculates the inverted matrix using the solve command, then
## caches both the initial matrix and the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
invertedmatrix <- solve(x) 
y <<- x 
cachedinversematrix <<- invertedmatrix 
invertedmatrix
}

## This function checks if 
## (1) there is a cached initital matrix
## (2) there is a cached inverse matrix
## (3) the cached initial matrix is equal to the matrix given when the 
## function is called

## if all of these facts are true, the cached matrix is called, otherwise, the 
## inverse matrix is calculated

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

#1 Building matrix and doing math
# Create matrices A and B
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

A + B
A - B

#2 Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
diag(c(4, 1, 2, 3))

#3 Generating a matrix using diag()
C <- diag(rep.int(3, 5))
C[1,2:5] <- rep.int(1, 4)
C[2:5,1] <- rep.int(2, 4)

C

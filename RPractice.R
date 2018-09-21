1 + 2
height <- 3
height
width <-6
width
area <- height * width
area
ls()
TRUE
class(TRUE)
2
2.5
2L
class(2L)
class(2)
is.numeric(2)
a <- "I love data science"
a
class(a)
as.numeric(TRUE)
as.numeric(FALSE)
as.character(4)


suits <- c("Spades", "Hearts", "Diamonds", "Clubs")
remain <- c(11, 12, 11, 13)

names(remain) <- suits
remain
remain[1]
remain[c(1, 4)]
remain[c(TRUE, FALSE)]

#Matrices

matrix(1:6, nrow = 2)
matrix(1:6, ncol = 3)

matrix(1:3, ncol = 2, nrow = 3, byrow = TRUE)

cbind(1:3, 1:3)
rbind(1:3, 1:3)

m <- matrix(1:6, byrow = TRUE, nrow = 2)
m
rbind(m, 7:9)
cbind(m, c(10, 11))
rownames(m) <- c("row1", "row2")
m
colnames(m) <- c("col1", "col2", "col3")
m

n <- matrix(1:6, byrow = TRUE, nrow = 2,
            dimnames = list(c("row1", "row2"),
                            c("col1", "col2", "col3")))
n

library(methods)
#Generic functions to be used with datasets
summary(mtcars)
print(mtcars)
head(mtcars, 5)

#Generic function that doesn't work with dataset
mean(mtcars)

#Creating s3 for mtcars
s3mtcars <- list(name = "Mazda RX4", mpg = 21.0, cyl =6)
class(s3mtcars) <- "s3cars"
s3mtcars

#creating s4 for mtcars
setClass("mtcars", slots=list(name="Mazda RX4", mpg = 21.0, cyl =6))
s4mtcars <- new("mtcars", name = "Mazda RX4", mpg = 21.0, cyl = 6)

# creating a s3 example
movieList <- list(name = "Captain America", leadActor = "Chris Evans")

# give a name to my class
class(movieList) <- "movie"

movieList

# creating a S4 example
setClass("movies", slots=list(name="character", leadActor = "character"))

# creating an object using new() by passing class name and slot values
movieList <- new("movies", name="Captain America", leadActor = "Chris Evans")
movieList

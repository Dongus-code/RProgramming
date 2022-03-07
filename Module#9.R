library(readxl)
city <- read_excel("C:/Users/trida/Downloads/city.xlsx")
View(city)



plot.default(city)


install.packages("lattice")
library(lattice)
barchart(~city)


library(ggplot2)
p <- ggplot(city, aes(u, x)) + geom_point()
p + geom_vline(xintercept = 150)

Students <- read.table(file.choose(),header=TRUE, sep=",")


install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(plyr)
library(data.table)
install.packages("Rcpp")
library(Rcpp)

students_gendered_mean <- ddply(Students, "Sex", transform, average_grade=mean(Grade))

# STep 2: Write the new data set to a file
write.table(students_gendered_mean, "Students_Gendered_Mean")

# Filter the original data set to include only data for which the student name
# contained the letter i.
i_students <- subset(Students, grepl("i", Students$Name, ignore.case=T))

# Step 3: Write the filtered data set to a CSV file
write.table(i_students, "DataSet_Subset.csv", sep=",")

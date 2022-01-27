Patient.1 <- c("0.6","103","bad","low","low")
Patient.2 <- c("0.3","87","bad","low","high")
Patient.3 <- c("0.4","32","bad","high","low")
Patient.4 <- c("0.4","42","bad","high","high")
Patient.5 <- c("0.2","59","good","low","low")
Patient.6 <- c("0.6","109","good","low","high")
Patient.7 <- c("0.3","78","good","high","low")
Patient.8 <- c("0.4","205","good","high","high")
Patient.9 <- c("0.9","135","NA","high","high")
Patient.10 <- c("0.2","176","bad","high","high")

Patients <- data.frame(Patient.1,Patient.2,Patient.3,Patient.4,Patient.5,
                       Patient.6,Patient.7,Patient.8,Patient.9,Patient.10)
#Creating Variables to be graphed
Frequency <- c(0.6,0.3,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,1,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

#Making a matrix to graph
AllPatients <- matrix(c(Frequency,BP,First,Second,FinalDecision),ncol=10,byrow=T)
colnames(AllPatients) <- colnames(Patients)
rownames(AllPatients) <- c("Frequency", "BP", "First", "Second", "FinalDecision")

# Create a boxplot showing averages of doctor evaluation
boxplot(AllPatients[3:4,], main="Doctor Evaluation vs. ER Priority", ylab="Assessments", yaxt='n', las=2, col="gray")
axis(2,labels=c("Good","Bad"), at=0:1, las=1)


# Make a histogram for visit frequency
hist(AllPatients[1,], col="gray", main="Patient Visit Frequency", xlab="Visit Frequency in Past Twelve Months", ylab="Patients")

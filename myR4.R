psidData =read.csv("MyR/PSID.csv")
nrow(psidData)
ncol(psidData)
head(psidData)
head(psidData,3)
tail(psidData,3)
summary(psidData)
plot(psidData)
counts <- table(psidData$age)
barplot(counts, main="Highest Education Distribution Vs Age", 
        xlab="Number of Male and female")
slices <- c(table(brainData$Gender))
lbls <- c("male","female")
pie(slices, labels = lbls, main="Pie Chart of Gender")

qplot(age, earnings, color=jobclass, data=psidData)
plot(psidData$age,psidData$earnings,xlab="age",ylab="earnings",pch=3) 
na.omit(psidData)
psidData1 <- na.omit(psidData) 
psidData <- subset(psidData, psidData$age >= 40 & psidData$age <= 50)
plot(psidData)
counts1 <- table(psidData$earnings)
barplot(counts1, main="Earnings Vs Age",         xlab="Age")

psidData <- subset(psidData, psidData$earnings >= 5000 & psidData$age <= 15000)
counts <- table(psidData$earnings)
barplot(counts, main="Highest Education Distribution Vs Age", 
        xlab="Number of Male and female")




psidData = prop.table(table(psidData$age))
# Now plot this
barplot(psidData, ylab = "Percentage", las = 2)













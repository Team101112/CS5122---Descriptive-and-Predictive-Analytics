psidData = read.csv("PSID.csv",header = TRUE)

psidData


summary(psidData)
plot(brainData)
summary(brainData$Gender)


#maritial status pie chart
table(psidData$married)
pie(table(psidData$married))
(psidData$educatn)




barplot(table(psidData$married))
hist(psidData$kids)

mri_step=ecdf(brainData$MRI_Count)
plot(mri_step, cex.main = 0.75)

par(mfrow=c(1,2))
boxplot(brainData$Height)
boxplot(brainData$Weight)

d=density(brainData$Height)
par(mfrow=c(1,3))
plot(brainData$Height,cex.main=0.75)
plot(d,cex.main=0.75)

p=ecdf(psidData$earnings)=0.75
plot(p,cex.main)




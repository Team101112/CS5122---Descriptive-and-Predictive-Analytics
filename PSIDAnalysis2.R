psidData = read.csv("PSID.csv",header = TRUE)
kc = kmeans(psidData[,2:4],2)

kc

par(mfrow=c(1,2))
plot(psidData[,4:6], col=kc$cluster)
points(kc$centers[,1:2], col=1:2, pch=8, cex=2)
plot(psidData[,3:4],col=kc$cluster)
points(kc$centers[,2:3], col=1:2, pch=8, cex=2)
table(psidData$Gender,kc$cluster)

data(psidData)
plot(psidData,cex.main=0.75)
par(mfcol=c(1,2))
plot(psidData[,1:2],cex.main=0.75)
plot(iris[,3:4],cex.main=0.75)

#cluster to 3 
kc=kmeans(psidData[,1:4],3)
plot(psidData,cex.main=0.75)

plot(psidData[,1:2],col=kc$cluster,cex.main=0.75)
points(kc$centers[,1:2],col=1:3,pch=8,cex=2)

plot(psidData[,3:4],col=kc$cluster,cex.main=0.75)
points(kc$centers[,3:4],col=1:3,pch=8,cex=2)

table(psidData$hours,kc$cluster)

#Hierarchycal Clustering

dis= dist(brainData[2:4],method = "euclidean")
hcBrainAve = hclust(dis,method = "ave")
hcBrainWard =hclust(dis,method = "Ward.D")
par(mfclo=c(1,2))
plot(hcBrainAve,hang=-1,cex.main=0.75,cex.axis=0.5)
rect.hclust(hcBrainAve,k=2,border = "green")
plot(hcBrain,hang=-1,cex.main=0.75,cex.axis=0.5)
rect.hclust(hcBrainAve,k=2,border = "green")





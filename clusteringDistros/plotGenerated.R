temp <- read.table("ccf.twitter.tab", header=FALSE, sep="\t", skip=4)
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("ccf.TCL.tab", header=FALSE, sep="\t", skip=4)
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("ccf.FRDG.tab", header=FALSE, sep="\t", skip=4)
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("ccf.FRDG_TCL.tab", header=FALSE, sep="\t", skip=4)
x4 <- temp[,1]
y4 <- temp[,2]


plot(x1,y1, main="Clustering Coefficient Distribution Comparison", xlab="Node Degree", ylab="Avg. Clustering Coefficient", log="x", col="red", type='l', xlim=c(1,10000))

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

legend(x=500, y=.75, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL'), col=c('red','orange','green', 'blue'), lty=c(1,1,1,1))

dev.copy(pdf,'generatorComparison_clustering.pdf')
dev.off()
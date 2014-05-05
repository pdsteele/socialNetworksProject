pdf(file='generatedComparison_clustering.pdf')
temp <- read.table("./clusteringDistros/ccf.twitter.tab", header=FALSE, sep="\t", skip=4)
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("./clusteringDistros/ccf.TCL_1.tab", header=FALSE, sep="\t", skip=4)
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("./clusteringDistros/ccf.FRDG.tab", header=FALSE, sep="\t", skip=4)
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("./clusteringDistros/ccf.FRDG_TCL_FIXP.tab", header=FALSE, sep="\t", skip=4)
x4 <- temp[,1]
y4 <- temp[,2]

temp <- read.table("./clusteringDistros/ccf.FRDG_TCL_5.tab", header=FALSE, sep="\t", skip=4)
x5 <- temp[,1]
y5 <- temp[,2]


plot(x1,y1, main="Clustering Coefficient Distribution Comparison", xlab="log(Node Degree)", ylab="Avg. Clustering Coefficient", log="x", col="red", type='l', xlim=c(1,10000))

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

lines(x5,y5, col='purple')

legend(x=500, y=.75, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL_P', 'FRDG_TCL'), col=c('red','orange','green', 'blue', 'purple'), lty=c(1,1,1,1,1))


dev.off()


pdf(file='generatedComparison_hop.pdf')
temp <- read.table("./HopPlots/hop.twitter.tab", header=FALSE, sep="\t", skip=4)
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("./HopPlots/hop.TCL_1.tab", header=FALSE, sep="\t", skip=4)
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("./HopPlots/hop.FRDG.tab", header=FALSE, sep="\t", skip=4)
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("./HopPlots/hop.FRDG_TCL_FIXP.tab", header=FALSE, sep="\t", skip=4)
x4 <- temp[,1]
y4 <- temp[,2]

temp <- read.table("./HopPlots/hop.FRDG_TCL_5.tab", header=FALSE, sep="\t", skip=4)
x5 <- temp[,1]
y5 <- temp[,2]


plot(x1,y1, main="Hop Plot Comparison", xlab="Number of Hops", ylab="Number of Pairs of Nodes", col="red", type='l', log="y")

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

lines(x5,y5, col='purple')

legend(x=7, y=100000000, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL_P', 'FRDG_TCL'), col=c('red','orange','green', 'blue', 'purple'), lty=c(1,1,1,1,1))


dev.off()

pdf(file='generatedComparison_inDeg.pdf')
temp <- read.table("./inDegreeDistros/indeg_twitter", header=FALSE, sep=" ")
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("./inDegreeDistros/indeg_TCL_1", header=FALSE, sep=" ")
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("./inDegreeDistros/indeg_FRDG", header=FALSE, sep=" ")
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("./inDegreeDistros/indeg_FRDG_TCL_FIXP", header=FALSE, sep=" ")
x4 <- temp[,1]
y4 <- temp[,2]

temp <- read.table("./inDegreeDistros/indeg_FRDG_TCL_5", header=FALSE, sep=" ")
x5 <- temp[,1]
y5 <- temp[,2]

plot(x1,y1, main="In-Degree Distribution Comparison", xlab="log(degree)", ylab="log(frequency)", log="xy", col="red", type='l', xlim=c(1,3000))

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

lines(x5,y5, col='purple')

legend(x=200, y=12000, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL_P', 'FRDG_TCL'), col=c('red','orange','green', 'blue', 'purple'), lty=c(1,1,1,1,1))

dev.off()



pdf(file='generatedComparison_outDeg.pdf')
temp <- read.table("./outDegreeDistros/outdeg_twitter", header=FALSE, sep=" ")
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("./outDegreeDistros/outdeg_TCL_1", header=FALSE, sep=" ")
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("./outDegreeDistros/outdeg_FRDG", header=FALSE, sep=" ")
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("./outDegreeDistros/outdeg_FRDG_TCL_FIXP", header=FALSE, sep=" ")
x4 <- temp[,1]
y4 <- temp[,2]

temp <- read.table("./outDegreeDistros/outdeg_FRDG_TCL_5", header=FALSE, sep=" ")
x5 <- temp[,1]
y5 <- temp[,2]

plot(x1,y1, main="Out-Degree Distribution Comparison", xlab="log(degree)", ylab="log(frequency)", log="xy", col="red", type='l', xlim=c(1,3000))

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

lines(x5,y5, col='purple')

legend(x=200, y=12000, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL_P', 'FRDG_TCL'), col=c('red','orange','green', 'blue', 'purple'), lty=c(1,1,1,1,1))

dev.off()




pdf(file='generatedComparison_recipDeg.pdf')
temp <- read.table("./recipDegreeDistros/recipdeg_twitter", header=FALSE, sep=" ")
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("./recipDegreeDistros/recipdeg_TCL_1", header=FALSE, sep=" ")
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("./recipDegreeDistros/recipdeg_FRDG", header=FALSE, sep=" ")
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("./recipDegreeDistros/recipdeg_FRDG_TCL_FIXP", header=FALSE, sep=" ")
x4 <- temp[,1]
y4 <- temp[,2]

temp <- read.table("./recipDegreeDistros/recipdeg_FRDG_TCL_5", header=FALSE, sep=" ")
x5 <- temp[,1]
y5 <- temp[,2]

plot(x1,y1, main="Reciprocal-Degree Distribution Comparison", xlab="log(degree)", ylab="log(frequency)", log="xy", col="red", type='l', xlim=c(1,3000))

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

lines(x5,y5, col='purple')

legend(x=200, y=12000, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL_P', 'FRDG_TCL'), col=c('red','orange','green', 'blue', 'purple'), lty=c(1,1,1,1,1))


dev.off()


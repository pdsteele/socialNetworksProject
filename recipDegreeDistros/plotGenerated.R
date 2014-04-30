temp <- read.table("recipdeg_twitter", header=FALSE, sep=" ")
x1 <- temp[,1]
y1 <- temp[,2]

temp <- read.table("recipdeg_TCL", header=FALSE, sep=" ")
x2 <- temp[,1]
y2 <- temp[,2]

temp <- read.table("recipdeg_FRDG", header=FALSE, sep=" ")
x3 <- temp[,1]
y3 <- temp[,2]

temp <- read.table("recipdeg_FRDG_TCL", header=FALSE, sep=" ")
x4 <- temp[,1]
y4 <- temp[,2]


plot(x1,y1, main="Reciprocal-Degree Distribution Comparison", xlab="log(degree)", ylab="log(frequency)", log="xy", col="red", type='l', xlim=c(1,3000))

lines(x2,y2, col="orange")

lines(x3,y3, col="green")

lines(x4,y4, col="blue")

legend(x=300, y=12000, legend=c('Original', 'TCL', 'FRDG', 'FRDG_TCL'), col=c('red','orange','green', 'blue'), lty=c(1,1,1,1))

dev.copy(pdf,'generatorComparison_recipDeg.pdf')
dev.off()
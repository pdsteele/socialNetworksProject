
findRecipEdges <- function(fileName) {
    temp <- read.table(fileName, header=FALSE, sep=" ", skip=1)
    x1 <- temp[,1]
    y1 <- temp[,2]

    sum = 0
    for (i in 1:length(x1)){
        sum = sum + (x1[i] * y1[i])
    }

    print(fileName)
    print(sum)
}

findRecipEdges('recipdeg_twitter')
findRecipEdges('recipdeg_FRDG')
findRecipEdges('recipdeg_TCL')
findRecipEdges('recipdeg_FRDG_TCL')
findRecipEdges('recipdeg_FRDG_25')
findRecipEdges('recipdeg_FRDG_50')
findRecipEdges('recipdeg_FRDG_TCL_2')
findRecipEdges('recipdeg_TwitterRand1.25')
findRecipEdges('recipdeg_TwitterRand1.50')
findRecipEdges('recipdeg_TwitterRW1.25')
findRecipEdges('recipdeg_TwitterRW1.50')


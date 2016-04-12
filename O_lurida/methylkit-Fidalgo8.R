

setwd("/Volumes/web-1/halfshell/working-directory/16-04-05")

library(methylKit)




file.list <- list ('mkfmt_1_ATCACG.txt',
'mkfmt_2_CGATGT.txt',
'mkfmt_3_TTAGGC.txt',
'mkfmt_4_TGACCA.txt',
'mkfmt_5_ACAGTG.txt',
'mkfmt_6_GCCAAT.txt',
'mkfmt_7_CAGATC.txt',
'mkfmt_8_ACTTGA.txt'
)


myobj=read(file.list,sample.id=list("1","2","3","4","5","6","7","8"),assembly="Pat10k",treatment=c(0,0,0,0,1,1,1,1))
         

  
           meth<-unite(myobj)
           head(meth)
           nrow(meth)
           getCorrelation(meth,plot=F)
           hc<- clusterSamples(meth, dist="correlation", method="ward", plot=T)
           PCA<-PCASamples(meth)
           
           
           
           PCASamples(meth, screeplot=TRUE)
           PCASamples(meth)  
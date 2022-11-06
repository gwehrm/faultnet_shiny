# library(bnlearn)
# 
# cptA <-  matrix(c(0.1,0.3, 0.6), ncol = 3, dimnames = list(NULL, c("LOW", "MEDIUM", "HIGH")))
# 
# cptB <-  matrix(c(0.8, 0.2), ncol = 2, dimnames = list(NULL, c("GOOD", "BAD")))
# 
# cptC <-  c(0.5, 0.5, 0.4, 0.6, 0.2, 0.8,  0.3, 0.7, 0.2, 0.8, 1, 0)
# dim(cptC) = c(2, 3, 2)
# dimnames(cptC) = list("C" = c("TRUE", "FALSE"), "A" =  c("LOW", "MEDIUM", "HIGH"),"B" = c("GOOD", "BAD"))
# 
# 
# 
# net <- model2network("[A][B][C|A:B]")
# dfit <- custom.fit(net, dist = list(A = cptA, B = cptB, C = cptC))





# biocLite is not available for r 3.6 - therefore usage of BiocManager to install the packeages
library(RBGL)
library(gRbase)
library(gRain)
library(Rgraphviz)
lmh <- c("low","medium", "high")
gb <- c("good", "bad")
tf <- c("True", "False")


cptA <- cptable(~A, values = c(0.1, 0.3, 0.6), levels = lmh) 
cptB <- cptable(~B, values = c(0.8, 0.2), levels = gb) 

cptC <- cptable(~C|A:B, values = c(0.5, 0.5, 0.4, 0.6, 0.2, 0.8,  0.3, 0.7, 0.2, 0.8, 1, 0), levels = tf)



plist <- compileCPT(list(cptA, cptB, cptC))
net <- grain(plist)

for (i in plist){
  print("--------------------")
  print(i)
}






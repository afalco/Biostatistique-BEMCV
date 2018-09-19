donnees<-read.csv("http://afalco.hol.es/cursos/nutriage.csv",header=TRUE)
attach(donnees)
beta0 <- 132.5900
beta1 <-  0.4719  
taille.chapeau <- beta0 + beta1*poids
distances <- (taille.chapeau-taille)^2
plot(poids,distances,col='red')
erreur.optimal <- mean(distances)
erreur.optimal
beta1.chapeau <- cor(poids,taille)*sd(taille)/sd(poids)
beta0.chapeau <- mean(taille)-beta1.chapeau*mean(poids)
hist(sqrt(distances))
summary(sqrt(distances))
plot(poids,taille,col='red')
points(poids,taille.approche,type='l',col='blue')

plot(poids,distances,col='blue')

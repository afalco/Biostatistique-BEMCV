#Atelier 4 Pratique Antonio Falco
3+3 #somme de deux chiffre
3*sin(pi) #emploi fonction sinus
x <- 3 #operateur affectation
x <- c(3)
x
coleur_yeux <- c("marron","marron","vert", "marron", "vert", "bleu", "vert", 
                 "marron", "marron", "marron", "vert", "vert", "bleu", "vert",
                 "bleu", "marron", "bleu", "marron","marron", "marron", 
                 "marron", "marron", "bleu", "bleu", "vert", "marron",
                 "bleu")
poids <- c(1.48,1.67,1.72,1.84, 1.56, 1.68,1.75, 1.84, 1.56, 1.68,
           1.76, 1.94, 1.60, 1.68,1.77, 1.61, 1.69, 1.77, 1.63, 1.70, 
           1.79, 1.64, 1.71, 1.81, 1.64,1.72, 1.81)
#On va calculer la variance de y
y <- c(1,2,3,4,5,6,7,8,9,10)
moyenne <- sum(y)/length(y)
moyenne
variance <- sum((y-moyenne)^2)/(length(y)-1)
variance
mean(y) #moyenne de y
var(y) #variance y
summary(y)
#on va telecharger une base de données
intima <- read.csv2("http://biostatisticien.eu/springeR/Intima_Media.txt",header=TRUE,sep="",dec=",")
head(intima) #voir les `premieres lignes
View(intima) #voir la base de données.
#Statistique basique: Pour la variable taille
summary(intima$taille)
hist(intima$taille)
#Statistique basique: Pour la variable poids
summary(intima$poids)
hist(intima$poids)
#Relation entre poids et taille
plot(intima$poids,intima$taille,col="blue")
plot(intima$taille,intima$poids,col="blue")
# Variable qualitative SEXE
table(intima$SEXE)
pie(table(intima$SEXE))
#Le tabac par sexe
tabac_homme <- intima$tabac[intima$SEXE==1]
tabac_femme <- intima$tabac[intima$SEXE==2]
table(tabac_homme)
table(tabac_femme)
#Etudier l'intima media par rapport la variable tabac
mesure_chez0 <- intima$mesure[intima$tabac==0]
mesure_chez2 <- intima$mesure[intima$tabac==2]
summary(mesure_chez0)
summary(mesure_chez2)
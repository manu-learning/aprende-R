library(titanic)
data("titanic_train")
# mostramos algunos registros por la terminal
head(titanic_train)

library('rpart')
library('rpart.plot')

# declaramos la variable "experimento" para el modelo predictivo
experimento=rpart(
  # función predictiva de sobrevivientes en función al Sexo y a la Edad
  formula = Survived ~ Sex + Age,
  cp = .02,
  # (dataset) conjunto de datos
  data = titanic_train
  )

# graficamos el árbol
rpart.plot(experimento, type=3, branch=.3, clip.right.labs = FALSE)

# imprimimos las reglas
rpart.rules(experimento)

text(experimento, use.n=TRUE)

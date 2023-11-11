# Установка и загрузка библиотек
install.packages(c("class", "caret", "lattice", "sendmailR", "readr"))

# 1.Устанавливаем рабочую директорию
library(readr)
iris <- read_csv("C:/Users/Виолетта/Desktop/Новая папка/iris.csv")
View(iris)

# 2.Визуализация данных
library(caret)
xyplot(sepal.length + sepal.width + petal.length + petal.width + variety, auto.key = list(columns = 3))

# 3.Разделение данных на обучающую и тестовую выборки
set.seed(123)
trainIndex <- createDataPartition(iris$variety, p = 0.7, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[trainIndex, ]

# 4.Обучение модели KNN
library(class)
knn_model <- knn(trainData[, 1:4], testData[, 1:4], trainData$variety, k = 3)

# 5.Оценка точности модели
library(caret)
library(lattice)
accuracy <- mean(knn_model == testData$variety)
cat("Точность модели KNN:", accuracy, "\n")

# 6.Отправка результатов по почте
library(sendmailR)
from = "<Sidyakova.Vita9@gmail.com>"
to = c("<Sidyakova.Vita9@gmail.com>","<Sidyakova.Vita9@gmail.com>")
subject <- "Результаты классификации KNN"
body    <- ("Точность модели KNN")
sendmail(from=from,to=to,subject=subject,msg=body,control=list(smtpServer="ASPMX.L.GOOGLE.COM"))

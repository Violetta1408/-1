Automobile <-  setClass("Automobile", slots=list())
setGeneric("ехать", function(object) standardGeneric("ехать"))
[1] "ехать"
setGeneric("гудеть", function(object) standardGeneric("гудеть"))
[1] "гудеть"
setGeneric("тормозить", function(object) standardGeneric("тормозить"))
[1] "тормозить"
setGeneric("цвет", function(object) standardGeneric("цвет"))
[1] "цвет"

setMethod("тормозить", "Автомобиль", function(object) {
  cat("Я торможу\n")
})
setMethod("ехать", "Automobile", function(object) {
cat("Я езжу\n")
})
setMethod("гудеть", "Automobile", function(object) {
cat("Бип-бип\n")
  })
setMethod("цвет", "Automobile", function(object) {
  cat("Цвет машины\n")
})

DieselCar <-  setClass("Дизельный автомобиль", contains="Automobile")
setMethod("ехать", "Дизельный автомобиль", function(object) {
cat("Я езжу на дизельном топливе\n")
})
setMethod("гудеть", "Дизельный автомобиль", function(object) {
cat("Звук: Тук-тук\n")
})
setMethod("тормозить", "Дизельный автомобиль", function(object) {
  cat("Я торможу на дизельном топливе\n")
})
setMethod("цвет", "Дизельный автомобиль", function(object) {
  cat("Цвет машины: красный\n")
})

GasolineCar <-  setClass("Бензиновый автомобиль", contains="Automobile")
setMethod("ехать", "Бензиновый автомобиль", function(object) {
cat("Я езжу на бензине\n")
})
setMethod("гудеть", "Бензиновый автомобиль", function(object) {
cat("Звук: Врум-врум\n")
})
setMethod("тормозить", "Бензиновый автомобиль", function(object) {
  cat("Я торможу на бензиновом топливе\n")
})
setMethod("цвет", "Бензиновый автомобиль", function(object) {
  cat("Цвет машины: синий\n")
})

ElectricCar <-  setClass("Электрический автомобиль", contains="Automobile")
setMethod("ехать", "Электрический автомобиль", function(object) {
cat("Я езжу на электричестве\n")
})
setMethod("гудеть", "Электрический автомобиль", function(object) {
cat("Звук: вжух-вжух!!\n")
})
setMethod("тормозить", "Электрический автомобиль", function(object) {
  cat("Я торможу на электрическом топливе\n")
})
setMethod("цвет", "Электрический автомобиль", function(object) {
  cat("Цвет машины: зеленый\n")
})

createCarInstance <- function(choice) {
if (choice == "Дизель") {
car <- DieselCar()
} else if (choice == "Бензин") {
car <- GasolineCar()
} else if (choice == "Электрик") {
car <- ElectricCar()
Automobile <-  setClass("Automobile", slots=list())
setGeneric("ехать", function(object) standardGeneric("ехать"))
[1] "ехать"
setGeneric("гудеть", function(object) standardGeneric("гудеть"))
[1] "гудеть"
setGeneric("тормозить", function(object) standardGeneric("тормозить"))
[1] "тормозить"
setGeneric("цвет", function(object) standardGeneric("цвет"))
[1] "цвет"

setMethod("тормозить", "Автомобиль", function(object) {
  cat("Я торможу\n")
})
setMethod("ехать", "Automobile", function(object) {
  cat("Я езжу\n")
})
setMethod("гудеть", "Automobile", function(object) {
  cat("Бип-бип\n")
})
setMethod("цвет", "Automobile", function(object) {
  cat("Цвет машины\n")
})

DieselCar <-  setClass("Дизельный автомобиль", contains="Automobile")
setMethod("ехать", "Дизельный автомобиль", function(object)
  cat("Я езжу на дизельном топливе\n")
setMethod("гудеть", "Дизельный автомобиль", function(object) {
  cat("Звук: Тук-тук\n")
})
setMethod("тормозить", "Дизельный автомобиль", function(object) {
  cat("Я торможу на дизельном топливе\n")
})
setMethod("цвет", "Дизельный автомобиль", function(object) {
  cat("Цвет машины: красный\n")
})

GasolineCar <-  setClass("Бензиновый автомобиль", contains="Automobile")
setMethod("ехать", "Бензиновый автомобиль", function(object) {
  cat("Я езжу на бензине\n")
})
setMethod("гудеть", "Бензиновый автомобиль", function(object) {
  cat("Звук: Врум-врум\n")
})
setMethod("тормозить", "Бензиновый автомобиль", function(object) {
  cat("Я торможу на бензиновом топливе\n")
})
setMethod("цвет", "Бензиновый автомобиль", function(object) {
  cat("Цвет машины: синий\n")
})

ElectricCar <-  setClass("Электрический автомобиль", contains="Automobile")
setMethod("ехать", "Электрический автомобиль", function(object) {
  cat("Я езжу на электричестве\n")
})
setMethod("гудеть", "Электрический автомобиль", function(object) {
  cat("Звук: вжух-вжух!!\n")
})
setMethod("тормозить", "Электрический автомобиль", function(object) {
  cat("Я торможу на электрическом топливе\n")
})
setMethod("цвет", "Электрический автомобиль", function(object) {
  cat("Цвет машины: зеленый\n")
})

createCarInstance <- function(choice) {
  if (choice == "Дизель") {
    car <- DieselCar()
  } else if (choice == "Бензин") {
    car <- GasolineCar()
  } else if (choice == "Электрик") {
    car <- ElectricCar()
  } else {
    stop("Неверно, введите (Дизель / Бензин / Электрик)")
  }
  return(car)
}
  runCarClasses <- function() {
    choice <- readline(prompt = "Какой класс автомобиля вас интересует? (Дизель / Бензин / Электрик): ")
    car <- createCarInstance(choice)
    cat("Родительский метод:\n")
    print(ехать(car))
    print(гудеть(car))
    cat("Собственный метод:\n")
    print(тормозить(car))
    print(цвет(car))
  }
  runCarClasses()
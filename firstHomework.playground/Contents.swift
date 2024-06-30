import UIKit

class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func printInfo() {
        print("Марка машины: \(brand)  Модель: \(model)  Год выпуска: \(year)")
    }
}

class BMW: Car {
    var fuelConsumption: Int
    
    init(fuelConsumption: Int, model: String, year: Int) {
        self.fuelConsumption = fuelConsumption
        super.init(brand: "BMW", model: model, year: year)
    }
    override func printInfo() {
          super.printInfo()
          print("Расход топлива: \(fuelConsumption)")
      }
}

class Mazda: Car {
    var enignePower: Int
    
    init(enignePower: Int, model: String, year: Int) {
        self.enignePower = enignePower
        super.init(brand: "Mazda", model: model, year: year)
    }
    
    override func printInfo() {
          super.printInfo()
          print("Мощность двигател: \(enignePower)")
      }
}

class LADA: Car {
    var cost: Int
    
    init(cost: Int, model: String, year: Int) {
        self.cost = cost
        super.init(brand: "LADA", model: model,  year: year)
    }
    
    override func printInfo() {
          super.printInfo()
          print("Цена автомобиля: \(cost)")
      }
}

class Tesla: Car {
    var color: String
    
    init(color: String, model: String, year: Int) {
        self.color = color
        super.init(brand: "Tesla", model: model, year: year)
    }
    override func printInfo() {
          super.printInfo()
          print("Цвет автомобиля: \(color)")
      }
}


func createCar(brand: String, model: String, year: Int) -> Car {
    return Car(brand: brand, model: model, year: year)
}

func race(firstCar: Car, secondCar: Car) -> Int {
    if firstCar.year < secondCar.year {
        return -1
    }
    else if (firstCar.year > secondCar.year){
        return 1
    }
    else {
        return 0;
    }
}

func createCarsList() -> [Car] {
    var carsList: [Car] = [];
    
    for i in 1...4 {
        carsList.append(createCar(brand: "BMW", model: "e30", year:  Int.random(in: 1980..<2025)))
    }
    for i in 1...4 {
        carsList.append(createCar(brand: "Mazda", model: "CX-5", year: Int.random(in: 1980..<2025)))
    }
    for i in 1...4 {
        carsList.append(createCar(brand: "LADA", model: "2105", year: Int.random(in: 1980..<2025)))
    }
    for i in 1...4 {
        carsList.append(createCar(brand: "Tesla", model: "ModelX", year: Int.random(in: 1980..<2025)))
    }
    
    carsList.shuffle()

    return carsList;
}

func createPairsOfCars(carsList: [Car]) -> [(Car, Car)] {
    var pairs = [(Car, Car)]()
    
    for i in 0..<carsList.count / 2 {
        let pair = (carsList[i * 2], carsList[i * 2 + 1])
        pairs.append(pair)
    }
    
    return pairs
}

func raceChanpionship() {
    var carsList = createCarsList()
    var pairs = createPairsOfCars(carsList: carsList)
    
    while pairs.count != 1 {
    var winers:  [Car] = []
        for i in 0..<pairs.count {
            if race(firstCar: pairs[i].0, secondCar: pairs[i].1) > 0 {
                print("Winner in race is: \(pairs[0].0.brand) \(pairs[0].0.model) \(pairs[0].0.year)")
                winers.append(pairs[i].0)
            }
            else if race(firstCar: pairs[i].0, secondCar: pairs[i].1) < 0 {
                print("Winner in race is: \(pairs[0].1.brand) \(pairs[0].1.model) \(pairs[0].1.year)")
                winers.append(pairs[i].1)
            }
        }
        pairs = createPairsOfCars(carsList: winers)
    }
    
    if race(firstCar: pairs[0].0, secondCar: pairs[0].1) > 0 {
        print("Champion is: \(pairs[0].0.brand) \(pairs[0].0.model) \(pairs[0].0.year)")
    } else if race(firstCar: pairs[0].0, secondCar: pairs[0].1) < 0 {
        print("Champion is: \(pairs[0].1.brand) \(pairs[0].1.model) \(pairs[0].1.year)")
    } else {
        print("DRAW")
    }
}
raceChanpionship()

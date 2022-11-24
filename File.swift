//
//  File.swift
//  segueLesson
//
//  Created by Sergey on 24.11.2022.
//

import Foundation

class Animal {
    var name = ""
    var description: String {
        "Animal"
    }
    
    init() {}
    
    
    init(name: String) {
        self.name = name
        
    }
}

class Dog: Animal {
    override var description: String {
        "Dog"
    }
}

class Cat: Animal {
    override var description: String {
        "Cat"
    }
}

class Bird: Animal {
    override var description: String {
        "Bird"
    }
}

let animal = Animal()
let dog = Dog()
let cat = Cat()
let bird = Bird()


// register enter animal

func getDog(_ dog: Dog) -> Dog {
    dog
}

let pet = getDog(dog)

// проблема функции, что она будет с наименованием животных разрастаться. Решение:

func getClientPet(_ pet: Animal) -> Animal {
    pet
}

let pet2 = getClientPet(dog)

private func petAnimal() {
    
    if pet2 is Dog {
        print("The animal is Dog")
    } else  if pet2 is Cat {
        print("The animal is Cat")
    } else if pet2 is Bird {
        print("The animal is Bird")
    }
}



func getPets() -> [Animal] {
    var pets: [Animal] = []

    let numberOfDogs = Int.random(in: 1...20)
    let numberOfCats = Int.random(in: 1...20)
    let numberOfBirds = Int.random(in: 1...20)
    
    for _ in 1...numberOfDogs {
        let dog = Dog()
        pets.append(dog)
    }
    
    
    for _ in 1...numberOfCats {
        let cat = Cat()
        pets.append(cat)
    }
    
    
    for _ in 1...numberOfBirds {
        let bird = Bird()
        pets.append(bird)
    }
    
    return pets
}













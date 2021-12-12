//
//  File.swift
//  LogInApp
//
//  Created by Виктор Шевцов on 08.11.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData () -> User {
        User (login: "Murka", password: "123", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson ()  -> Person {
        Person (name: "Viktor", surname: "Shevtsov", image: "octopus")
    }
}

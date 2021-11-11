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
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

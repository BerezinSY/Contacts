//
//  Person.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 31.10.2020.
//

import Foundation

struct Person: Identifiable, Hashable {
    
    let id = UUID()
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var imageString: String {
        firstName
    }
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let firstNames = Storage.shared.firstNames.shuffled()
        let lastNames = Storage.shared.lastNames.shuffled()
        let phones = Storage.shared.phones.shuffled()
        let emails = Storage.shared.emails.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}

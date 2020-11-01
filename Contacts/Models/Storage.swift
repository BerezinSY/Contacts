//
//  Storage.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 31.10.2020.
//

import Foundation

class Storage {
    
    static let shared = Storage()
    
    let firstNames = [
        "Megan",
        "Angelina",
        "Jennifer",
        "Olga",
        "Raichel"
    ]
    
    let lastNames = [
        "Smith",
        "Lawrence",
        "Jolie",
        "Weiss",
        "Dow"
    ]
    
    let phones = [
        "8(901) 100-00-01",
        "8(902) 100-00-02",
        "8(903) 100-00-03",
        "8(904) 100-00-04",
        "8(905) 100-00-05"
    ]
    
    let emails = [
        "111@mail.ru",
        "222@mail.ru",
        "333@mail.ru",
        "444@mail.ru",
        "555@mail.ru"
    ]
    
    private init() {}
}

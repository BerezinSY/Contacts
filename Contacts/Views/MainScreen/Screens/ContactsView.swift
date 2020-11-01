//
//  ContentView.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 31.10.2020.
//

import SwiftUI

struct ContactsView: View {
    
    private let persons = Person.getPersons()
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(
                    destination: DetailContactInfoView(person: person)
                ) {
                    HStack {
                        ImageView(
                            name: person.imageString,
                            size: 40,
                            cornerRadius: 20
                        )
                        Text("\(person.fullName)")
                    }
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}

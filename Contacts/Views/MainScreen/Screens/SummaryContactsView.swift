//
//  SummaryContactsView.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 01.11.2020.
//

import SwiftUI

struct SummaryContactsView: View {
    
    let persons: [Person] = Person.getPersons()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.self) { person in
                    Section(header: Text(person.fullName)) {
                        DetailInformation(
                            text: person.phone,
                            systemIcon: "phone"
                        )
                        
                        DetailInformation(
                            text: person.email,
                            systemIcon: "envelope"
                        )
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Summary list")
        }
    }
}



struct SummaryContactsView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryContactsView()
    }
}

//
//  DetailContactInfoView.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 31.10.2020.
//

import SwiftUI

struct DetailContactInfoView: View {
    
    let person: Person
    
    var body: some View {
        VStack(spacing: 10) {
            ImageView(
                name: person.imageString,
                size: 250,
                cornerRadius: 150
            )
            VStack(alignment: .leading, spacing: 16) {
                DetailInformation(
                    text: person.fullName,
                    systemIcon: "person.circle"
                )
                
                DetailInformation(
                    text: person.phone,
                    systemIcon: "phone"
                )
                
                DetailInformation(
                    text: person.email,
                    systemIcon: "envelope"
                )
            }.padding()
            Spacer()
        }
    }
}

struct DetailContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactInfoView(
            person: Person(
                firstName: "Angelina",
                lastName: "Ivanova",
                phone: "8-987-654-3210",
                email: "ivan.ivanov@gmail.com"
            )
        )
    }
}

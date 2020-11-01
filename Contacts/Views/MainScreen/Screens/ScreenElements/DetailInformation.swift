//
//  DetailInformation.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 31.10.2020.
//

import SwiftUI

struct DetailInformation: View {
    
    let text: String
    let systemIcon: String
    
    var body: some View {
        HStack {
            Image(systemName: systemIcon)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct DetailInformation_Previews: PreviewProvider {
    static var previews: some View {
        DetailInformation(text: "Ivan Ivanov", systemIcon: "phone")
    }
}

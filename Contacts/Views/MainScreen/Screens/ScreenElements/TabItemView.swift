//
//  TabItemView.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 01.11.2020.
//

import SwiftUI

struct TabItemView: View {
    
    let icon: String
    let text: String
    
    
    var body: some View {
        Image(systemName: icon)
        Text(text)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(icon: "Person", text: "Person")
    }
}

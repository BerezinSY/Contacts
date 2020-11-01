//
//  MainTabViewScreen.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 01.11.2020.
//

import SwiftUI

struct MainTabViewScreen: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    TabItemView(
                        icon: "person.circle",
                        text: "Contacts"
                    )
                }
            SummaryContactsView()
                .tabItem {
                    TabItemView(
                        icon: "rectangle.stack.person.crop.fill",
                        text: "Person"
                    )
                }
        }
    }
}

struct MainTabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainTabViewScreen()
    }
}

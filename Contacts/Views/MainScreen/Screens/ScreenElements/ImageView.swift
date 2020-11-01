//
//  ImageView.swift
//  Contacts
//
//  Created by BEREZIN Stanislav on 31.10.2020.
//

import SwiftUI

struct ImageView: View {
    
    let name: String
    let size: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: size, height: size)
            .foregroundColor(.gray)
            .cornerRadius(cornerRadius)
            .aspectRatio(contentMode: .fit)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(name: "Angelina", size: 250, cornerRadius: 150)
    }
}

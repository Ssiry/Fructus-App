//
//  SettingsLableView.swift
//  Fruits
//
//  Created by Hassan Assiry on 01/04/2023.
//

import SwiftUI

struct SettingsLableView: View {
    // MARK: - PROPERTIES
    var lableText: String
    var lableImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(lableText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}
    // MARK: - Previews
struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(lableText: "Fructus", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

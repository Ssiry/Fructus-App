//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Hassan Assiry on 01/04/2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name.capitalized).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!.capitalized)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!.capitalized , destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else{
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}
// MARK: - Previews
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SettingsRowView(name: "website",linkLabel: "SwiftUI masterclass",linkDestination: "swiftuimasterclass.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Developer", content: "Asery / hassan")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}

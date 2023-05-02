//
//  OnboardingView.swift
//  Fruits
//
//  Created by Hassan Assiry on 29/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruit: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            
            ForEach(fruit[0...5].shuffled()){ item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruit: fruitsData)
    }
}

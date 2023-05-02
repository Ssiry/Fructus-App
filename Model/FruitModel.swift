//
//  FruitModel.swift
//  Fruits
//
//  Created by Hassan Assiry on 29/03/2023.
//

import SwiftUI

//MARK: - fruit data model

struct Fruit : Identifiable {
    var id = UUID() // uniqe universal id [randam]
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition : [String]
}

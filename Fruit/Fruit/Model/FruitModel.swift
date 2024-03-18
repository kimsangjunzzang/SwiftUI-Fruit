//
//  FruitModel.swift
//  Fruit
//
//  Created by 김상준 on 3/18/24.
//

import SwiftUI

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

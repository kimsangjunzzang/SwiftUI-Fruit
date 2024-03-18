//
//  OnboardingVew.swift
//  Fruit
//
//  Created by 김상준 on 3/18/24.
//

import SwiftUI

struct OnboardingVew: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0..<5]){ item in
                FruitCardView(fruit: item)

            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingVew(fruits: fruitsData)
}

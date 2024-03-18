//
//  ContentView.swift
//  Fruit
//
//  Created by 김상준 on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSettings : Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button( action: {
                        isShowingSettings = true
                    },label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
        .previewDevice("iPhone 15 Pro")
}

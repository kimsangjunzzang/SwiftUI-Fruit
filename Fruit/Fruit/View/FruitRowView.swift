//
//  FruitRowView.swift
//  Fruit
//
//  Created by 김상준 on 3/18/24.
//

import SwiftUI

struct FruitRowView: View {
    var fruit: Fruit
    
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.3),radius: 3,x:2,y:2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment:.leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            })
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[1])
        .previewLayout(.sizeThatFits)
        .padding()
}

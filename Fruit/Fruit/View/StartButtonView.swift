//
//  StartButtonView.swift
//  Fruit
//
//  Created by 김상준 on 3/18/24.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8){
                
                    Text("Start")
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                
            }
            .padding(.horizontal,16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            
            )
        })
        .accentColor(Color.white)
    }
}


#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}

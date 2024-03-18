//
//  SettingsLabelView.swift
//  Fruit
//
//  Created by 김상준 on 3/19/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}

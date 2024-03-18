//
//  SettingsRowView.swift
//  Fruit
//
//  Created by 김상준 on 3/19/24.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linklabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil){
                    Text(content!)
                }else if(linklabel != nil && linkDestination != nil){
                    Link(linklabel!,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
        .padding()
        
        SettingsRowView(name: "Website", linklabel: "SwiftUI Masterclass",
                        linkDestination: "swiftuimasterclass.com")
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
    
}

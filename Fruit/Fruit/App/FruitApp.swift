//
//  FruitApp.swift
//  Fruit
//
//  Created by 김상준 on 3/17/24.
//

import SwiftUI

@main
struct FruitApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool =  true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingVew()
            }else{
                ContentView()
            }
        }
    }
}

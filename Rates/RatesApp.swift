//
//  RatesApp.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 26.10.2022.
//

import SwiftUI

@main
struct RatesApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .navigationBarHidden(true)
            }
            
        }
    }
}

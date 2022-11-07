//
//  RatesApp.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 26.10.2022.
//

import SwiftUI

@main
struct RatesApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}

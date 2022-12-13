//
//  SettingsView.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 13.12.2022.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://vk.com/frolovskiy")!

    
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    Text("Here we can discribe our app")
                    Text("with links and pictures")
                } header: {
                    Text("Moscow Metro")
                } footer: {
                    Text("footer")
                }

            }
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

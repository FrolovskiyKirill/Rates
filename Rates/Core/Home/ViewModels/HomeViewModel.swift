//
//  HomeViewModel.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 07.11.2022.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DevoloperPreview.instance.coin)
            self.portfolioCoins.append(DevoloperPreview.instance.coin)
        }
    }
    
}

//
//  DetailViewModel.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 09.12.2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { (retuenedCoinDetails) in
                print("RECIVED COIN DEATIL DATA")
                print(retuenedCoinDetails)
            }
            .store(in: &cancellables)
    }
}

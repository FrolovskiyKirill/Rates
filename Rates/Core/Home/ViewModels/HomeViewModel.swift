//
//  HomeViewModel.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 07.11.2022.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDateService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        
        dataService.$allCoins
            .sink { [weak self] (returneCoins) in
                self?.allCoins = returneCoins
            }
            .store(in: &cancellables)
    }
}

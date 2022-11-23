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
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
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

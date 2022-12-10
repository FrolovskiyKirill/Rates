//
//  DetailViewModel.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 09.12.2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    @Published var overviewSratistic: [StatisticModel] = []
    @Published var additionalSratistic: [StatisticModel] = []
    
    @Published var coin: CoinModel
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .combineLatest($coin)
            .map({ (coinDetailModel, coinModel) -> (overview: [StatisticModel], additional: [StatisticModel]) in
                
                let price = coinModel.currentPrice.asCurrencyWith6Decimals()
                let priceChange = coinModel.priceChangePercentage24H
                let priceStat = StatisticModel(title: "Current Price", value: price, percentageChange: priceChange)
                
                let marketCap = "$" + (coinModel.marketCap?.formattedWithAbbreviations() ?? "")
                let marketCapChange = coinModel.marketCapChangePercentage24H
                let marketCapStat = StatisticModel(title: "Market Capitalization", value: marketCap, percentageChange: marketCapChange)
                
                let rank = "\(coinModel.rank)"
                let rankStat = StatisticModel(title: "Rank", value: rank)
                
                let volume = "$" + (coinModel.totalVolume?.formattedWithAbbreviations() ?? "")
                let volumeStat = StatisticModel(title: "Volume", value: volume)
                
                var overviewArray: [StatisticModel] = [priceStat, marketCapStat, rankStat, volumeStat]
                
                //additional
                
                
                return (overviewArray, [])
            })
            .sink { (retuenedArrays) in
                print("RECIVED COIN DEATIL DATA")
                print(retuenedArrays.overview)
                print(retuenedArrays.additional)
            }
            .store(in: &cancellables)
    }
}

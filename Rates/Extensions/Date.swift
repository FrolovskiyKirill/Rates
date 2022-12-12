//
//  Date.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 12.12.2022.
//

import Foundation

extension Date {
    
//    "2021-03-13T23:18:10.268Z"
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
}

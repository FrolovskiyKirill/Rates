//
//  String.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 12.12.2022.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}

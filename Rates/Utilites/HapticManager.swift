//
//  HapticManager.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 04.12.2022.
//

import Foundation
import SwiftUI

class HapticManager {
 
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}

//
//  LocalFileManager.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 15.11.2022.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instanse = LocalFileManager()
    private init() { }
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
        guard let data = image.pngData(),
              let url = getURLForImage(imageName: imageName, folderName: folderName) else { return }
        
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving image. \(error.localizedDescription)")
        }
    }
    
    
    
    private func getURLForFolder(folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }
    
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
}


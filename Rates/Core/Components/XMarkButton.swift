//
//  XMarkButton.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 29.11.2022.
//

import SwiftUI

struct XMarkButton: View {
    
    //НЕ РАБОТАЕТ ДИСМИС!!! Вернуться позже! (закрывать можно смахиванием вниз)
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}

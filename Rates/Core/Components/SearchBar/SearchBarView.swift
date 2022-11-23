//
//  SearchBarView.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 22.11.2022.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
            TextField("Seach by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .overlay(
                Image(systemName: "x.circle.fill")
                    .padding()
                    .offset(x: 10)
                    .foregroundColor(Color.theme.accent)
                    .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    .onTapGesture {
                        searchText = ""
                    }
                , alignment: .trailing
                    
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.20), radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""))
    }
}

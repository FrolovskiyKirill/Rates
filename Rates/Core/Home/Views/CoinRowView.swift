//
//  CoinRowView.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 06.11.2022.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            centerColumn
            rightColumn
            
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView {
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text("\(coin.symbol.uppercased())")
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
            Spacer()
        }
    }
    
    private var centerColumn: some View {
        HStack(spacing: 0) {
            if showHoldingColumn {
                VStack(alignment: .trailing) {
                    Text(coin.currentHoldingValue.asCurrencyWith2Decimals())
                        .bold()
                        .foregroundColor(Color.theme.accent)
                    Text((coin.currentHoldings ?? 0).asNumberString())
                }
            }
        }
    }
    
    private var rightColumn: some View {
        HStack(spacing: 0) {
            VStack(alignment: .trailing) {
                Text(coin.currentPrice.asCurrencyWith6Decimals())
                    .bold()
                    .foregroundColor(Color.theme.accent)
                Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                    .foregroundColor(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ?
                        Color.theme.green :
                            Color.theme.red
                    )
            }
        }
        .frame(width: UIScreen.main.bounds.width / 3, alignment: .trailing)
    }
}

//
//  CoinCellView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI
import Kingfisher

struct CoinCellView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption2)
                .foregroundStyle(.gray)
            
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(.orange)
            
            // coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
//                if let priceChangePercentage24H =  {
                    Text("\(coin.priceChangePercentage24H)")
                        .font(.caption)
                        .padding(.leading, 6)
                        .foregroundStyle(.red)
//                } else {
//                    Text("N/A")
//                        .font(.caption)
//                        .padding(.leading, 6)
//                        .foregroundStyle(.red)
//                }
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

//#Preview {
//    CoinCellView()
//}

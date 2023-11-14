//
//  TopMoversItemView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading) {
            // img
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
                .padding(.bottom, 8)
            
            //coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            //coin % change
            
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundStyle(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

//#Preview {
//    TopMoversItemView()
//}

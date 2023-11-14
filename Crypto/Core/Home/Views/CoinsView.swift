//
//  CoinsView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI

struct CoinsView: View {
    @StateObject var viewModel: HomeViewModel
    // we won`t init, since ti is already init
    var body: some View {
        VStack(alignment: .leading) {
            Text("All coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                    
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundStyle(.gray)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinCellView(coin: coin)
                    }
                }
            }
        }
    }
}

//#Preview {
//    CoinsView()
//}

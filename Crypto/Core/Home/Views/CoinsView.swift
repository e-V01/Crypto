//
//  CoinsView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI

struct CoinsView: View {
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
                    ForEach(0 ..< 50, id: \.self) { _ in
                        CoinCellView()
                    }
                }
            }
        }
    }
}

#Preview {
    CoinsView()
}

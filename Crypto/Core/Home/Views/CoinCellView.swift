//
//  CoinCellView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI

struct CoinCellView: View {
    var body: some View {
        HStack {
            // market cap rank
            Text("1")
                .font(.caption2)
                .foregroundStyle(.gray)
            
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(.orange)
            
            // coin name info
            VStack(alignment: .leading, spacing: 4) {
            Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // coin price info
            VStack(alignment: .trailing, spacing: 4) {
            Text("$20,220.00")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("-5.60%")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundStyle(.red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    CoinCellView()
}

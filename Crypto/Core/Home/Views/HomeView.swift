//
//  HomeView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                TopMoversView()
                
                Divider()
                //all coins view
                
                CoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}

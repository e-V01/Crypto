//
//  HomeView.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                //all coins view
                
                CoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}

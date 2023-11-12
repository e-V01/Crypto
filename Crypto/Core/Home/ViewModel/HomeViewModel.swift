//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Y K on 12.11.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    init () {
        fetchCoinData()
    }
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                //  if there is error we want this func to stop here
                return
            }
            if let response = response as? HTTPURLResponse {
                // will show us whether or not we get a succesfull response to API  
                print("DEBUG: Response code\(response.statusCode)")
                //DEBUG: Response code200 - all works

            }
            
            guard let data = data else { return }
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                print("DEBUG: Coins \(coins)")
            } catch let error {
                print("DEBUG: Failed to decode with error \(error)")

            }
            
        }
        .resume() // resumes the task if that it was suspended
    }
    
}

//
//  APIManager.swift
//  GetProductList
//
//  Created by Govind Sen on 30/08/23.
//

import UIKit

// Singleton Design Pattern
final class APIManager {
    
    static let shared = APIManager()
    private init() {}
    
    func fetchProducts(handler: @escaping (Result<[Product], Error>) -> Void) {
        guard let url = URL(string: Constant.API.productURL) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data, error == nil else { return }
            
            guard let response = response as? HTTPURLResponse,
                  200...299 ~= response.statusCode else { return }
            
            do {
                let products = try JSONDecoder().decode([Product].self, from: data)
            } catch {
                
            }
        }.resume()
    }
}

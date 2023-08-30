//
//  Product.swift
//  GetProductList
//
//  Created by Govind Sen on 30/08/23.
//

import Foundation

struct Product {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rate
}

struct Rate {
    let rate: Double
    let count: Int
}

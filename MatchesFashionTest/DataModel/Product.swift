//
//  Product.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation

struct ProductsResponseObject : Decodable {
    let results: [Product]
    let result: String
    let reason: String
    let location: String
}

struct Product : Decodable {
    
}

//
//  ProductsViewModel.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation
import Combine

class ProductsViewModel : ObservableObject {
    
    @Published var products = [Product]()
    
    private var productsCancellable : AnyCancellable?
    
    init() {
        productsCancellable = NetworkingDataProcessor.defaultInstance.$products.receive(on: DispatchQueue.main).sink { [weak self] products in
            self?.products = products
        }
    }
}

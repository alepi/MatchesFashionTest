//
//  JSONParsing.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation
import Combine

class NetworkingDataProcessor {
    
    private var productsCancellable : AnyCancellable?
    
    static let defaultInstance = NetworkingDataProcessor()

    @Published var products: [Product] = []
    
    init() {
        fetchProducts()
    }

    // fetchProducts() is not thread safe. This is for simplicity,
    // and also because it is unlikely that two threads try to get
    // the same list of products at the same time.
    //
    // If that happens, it would probably indicate a bad design
    // decision elsewhere.
    func fetchProducts() {
        guard productsCancellable == nil else { return }
        do {
            productsCancellable = try Networking.fetchProductData()
                .sink(receiveCompletion: { error in
                    // Error handling here just logs errors for simplicity
                    // Ideally, in this case one would at least add some way of retrying
                    NSLog(String(describing: error))
                    self.productsCancellable = nil;
                }, receiveValue: { data in
                    let products = Product.ParseJSON(data)
                    NetworkingDataProcessor.defaultInstance.products = products
                    self.productsCancellable = nil;
                })
        } catch {
            // Error handling here just logs errors for simplicity
            // Ideally, in this case one would at least add some way of retrying
            NSLog(String(describing: error))
            self.productsCancellable = nil;
        }
    }
    
}

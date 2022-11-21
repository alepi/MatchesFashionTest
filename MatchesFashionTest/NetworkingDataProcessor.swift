//
//  JSONParsing.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation
import Combine

struct NetworkingDataProcessor {
    
    private static var productsCancellable : AnyCancellable?
    
    // fetchProducts() is not thread safe. This is for simplicity,
    // and also because it is unlikely that two threads try to get
    // the same list of products at the same time.
    //
    // If that happens, it would probably indicate a bad design
    // decision elsewhere.
    static func fetchProducts() {
        guard productsCancellable == nil else { return }
        do {
            productsCancellable = try Networking.fetchProductData()
                .sink(receiveCompletion: { error in
                    NSLog(String(describing: error))
                    self.productsCancellable = nil;
                }, receiveValue: { products in
                    NSLog(String(describing: products))
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

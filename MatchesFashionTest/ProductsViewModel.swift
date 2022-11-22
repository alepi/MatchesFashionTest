//
//  ProductsViewModel.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation
import Combine
import SwiftUI

class ProductsViewModel : ObservableObject {
    
    @Published var products = [Product]()

    private var productsCancellable : AnyCancellable?
    
    func productDetailView(for product:Product) -> some View {
        return ProductCoordinator.productDetailView(for: product)
    }
    
    var currencyConvertView: some View {
        return ProductCoordinator.currencyConvertView
    }

    @Published var showCurrencyConvertView = ProductCoordinator.showCurrencyConvertView {
        didSet {
            if !showCurrencyConvertView {
                convertCurrencyInProducts()
            }
        }
    }
    
    init() {
        productsCancellable = NetworkingDataProcessor.defaultInstance.$products.receive(on: DispatchQueue.main).sink { [weak self] products in
            self?.products = products
        }
    }
    
    private func convertCurrencyInProducts() {
        ProductCoordinator.currencyConversionFactor = 0.5 // TODO(ale): implement API call
        var convertedProducts = [Product]()
        for var product in products {
            let convertedPrice = product.priceValue * ProductCoordinator.currencyConversionFactor
            // here I am not using the same format as that of the data from the server
            // could be done better, but I don't have the time to look at these details
            //
            // also, the price is shown as a Double with full decimals. Again, won't wate time on this
            //
            // notice that the original product is not change as copy on write is happening here
            product.priceFormatted = "\(ProductCoordinator.currencyIsoForConversion) \(convertedPrice)"
            convertedProducts.append(product)
        }
        products = convertedProducts
    }
}

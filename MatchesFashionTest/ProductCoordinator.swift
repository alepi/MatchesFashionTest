//
//  ProductCoordinator.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation
import SwiftUI

struct ProductCoordinator {
        
    static func productDetailView(for product:Product) -> some View {
        let view = ProductDetailView()
        view.viewModel.product = product
        return view
    }
    
    static var currencyConvertView: some View {
        return CurrencyConvertView()
    }
    
    // NOTICE: in the assignment it talks about converting from GPB
    // the server returns prices in EUR
    //
    // Could it be because I am currently accessing the server from Italy?
    // If that was the case, then testing my software on the reviewer side may not work well...
    static let dataOriginalCurrencyIso = "EUR"
    static var currencyIsoForConversion = "EUR"
    static var currencyConversionFactor: Double = 0
    
    static var showCurrencyConvertView = false

}

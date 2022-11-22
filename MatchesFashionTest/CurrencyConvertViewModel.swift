//
//  CurrencyConvertViewModel.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 22/11/22.
//

import Foundation

class CurrencyConvertViewModel : ObservableObject {
    @Published var currencyIsoForConversion = ProductCoordinator.currencyIsoForConversion {
        didSet {
            ProductCoordinator.currencyIsoForConversion = currencyIsoForConversion
        }
    }
    
    @Published var currencyConversionFactor = ProductCoordinator.currencyConversionFactor {
        didSet {
            ProductCoordinator.currencyConversionFactor = currencyConversionFactor
        }
    }

    static let currencies = [
        "EUR",
        "USD",
        "GBP",
    ]
}

//
//  CurrencyConvertView.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 22/11/22.
//

import SwiftUI

struct CurrencyConvertView: View {
    @StateObject var viewModel = CurrencyConvertViewModel()
    var body: some View {
        VStack {
            Picker("Please choose your currency", selection: $viewModel.currencyIsoForConversion) {
                ForEach(CurrencyConvertViewModel.currencies, id: \.self) {
                    Text($0)
                }
            }
            Text("You selected: \(viewModel.currencyIsoForConversion)")
        }
    }
}

struct CurrencyConvertView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyConvertView()
    }
}

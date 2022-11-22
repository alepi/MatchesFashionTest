//
//  ProductsView.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import SwiftUI

struct ProductsView: View {
    @StateObject var viewModel = ProductsViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.products) { product in
                    // using a navigation link rather than a tap gesture here
                    // as it's the standard way in swiftUI
                    // One way to hide the disclosure arrow is to use a Z stack like below
                    ZStack {
                        NavigationLink(destination: viewModel.productDetailView(for: product)) {
                        }.opacity(0)
                        VStack(alignment: .center) {
                            AsyncImage(url: product.imageURL) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 200, height: 200)
                            .border(Color.black)
                            .clipped()
                            /*@START_MENU_TOKEN@*/Text(product.name)/*@END_MENU_TOKEN@*/
                                .frame(maxWidth: .infinity)
                                .multilineTextAlignment(.center)
                            Text(product.designerName)
                                .frame(maxWidth: .infinity)
                                .multilineTextAlignment(.center)
                            Text(product.priceFormatted)
                                .frame(maxWidth: .infinity)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }.navigationTitle("Products")
                .toolbar {
                    Button("Currency") { viewModel.showCurrencyConvertView=true }
                }
                .sheet(isPresented: $viewModel.showCurrencyConvertView, onDismiss: {
                    print(viewModel.showCurrencyConvertView)
                }) {
                    viewModel.currencyConvertView
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}

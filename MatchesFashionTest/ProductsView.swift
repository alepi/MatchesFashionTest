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
                    NavigationLink(destination: viewModel.productDetailView(for: product)) {
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}

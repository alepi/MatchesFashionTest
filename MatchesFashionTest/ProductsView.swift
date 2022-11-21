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
                    VStack {
                        AsyncImage(url: product.imageURL) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        /*@START_MENU_TOKEN@*/Text(product.name)/*@END_MENU_TOKEN@*/
                        Text(product.designerName)
                        Text(product.priceFormatted)
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

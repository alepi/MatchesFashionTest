//
//  ProductDetailView.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import SwiftUI

struct ProductDetailView: View {
    init() {
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    // here the view model is an ordinary variable
    // because its values are set before the view is shown
    // and never changed
    var viewModel = ProductDetailViewModel()
    var body: some View {
        VStack(alignment: .center) {
            AsyncImage(url: viewModel.product.imageURL) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            Text(viewModel.product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            Text(viewModel.product.designerName)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            Text(viewModel.product.priceFormatted)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
        }.navigationTitle(viewModel.product.name)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}

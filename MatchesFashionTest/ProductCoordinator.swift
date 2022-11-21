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
        let viewModel = ProductDetailViewModel()
        viewModel.product = product
        var view = ProductDetailView()
        view.viewModel = viewModel
        return view
    }

}

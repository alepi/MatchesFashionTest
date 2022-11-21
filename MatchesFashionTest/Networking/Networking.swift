//
//  Networking.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation
import Combine

struct Networking {
    static let urlString = "https://www.matchesfashion.com/intl/womens/shop?format=json"
    
    static func fetchProductData() throws -> AnyPublisher<Data, Error> {
        guard let url = URL(string: urlString) else { throw URLError(.badURL) }
        let request = URLRequest(url: url)
        return URLSession.DataTaskPublisher(request: request, session: .shared)
            .tryMap { data, response in
                guard let response = response as? HTTPURLResponse, 200..<300 ~= response.statusCode else { throw URLError(.badServerResponse) }
                return data
            }
            .eraseToAnyPublisher()
    }
    
}

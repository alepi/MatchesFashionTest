//
//  Product.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation

struct Product: Identifiable {
    var id: String
    
    // NOTICE: not using Decodable protocol and machinery due to the complexity of the data
    // and the lack of a formal specification for the data format.
    //
    // Also, another reason for decoding the JSON directly is that in this app specs I
    // don't need to keep the various parts of a product separated into different dictionaries
    // as they are in the JSON string.
    //
    // This approach has the characteristic that if a product dictionary does not contain all the
    // required keys the product is discarded. This could be either a good or a bad thing.
    // In a real application this would have to be considered.
    //
    // In a real world situation I would try to agree on a data format with the server devs
    // and switch Product to a Decodable object and rely on their own tests to make sure
    // that the data returned by the server conforms to that format.
    static func ParseJSON(_ data: Data) -> [Product] {
        guard let dict = try? JSONSerialization.jsonObject(with: data) else { return [] }
        guard let dict = dict as? [String:AnyObject] else { return [] }
        guard let results = dict["results"] as? [[String:AnyObject]] else { return [] }
        var products = [Product]()
        for dict in results {
            if let product = Product(dict) {
                products.append(product)
            }
        }
        return products
    }
    
    // The "Create a memory-efficient model to represent these products" part
    // of the assignment is ambiguous.
    //
    // What I am doing here might or might not meet the expectations of the reviewer,
    // but on the other hand that part of the assignment is really unclear without
    //further explanation.
    let name: String
    let designerName: String
    let priceFormatted: String
    let priceValue: Double
    let currencyIso: String
    let imageURL: URL
    
    init?(_ dictionary: [String:AnyObject])
    {
        guard let code = dictionary["code"] as? String else { return nil }
        guard let _name = dictionary["name"] as? String else { return nil }
        guard let designerDictionary = dictionary["designer"] as? [String:Any] else { return nil }
        guard let priceDictionary = dictionary["price"] as? [String:Any] else { return nil }
        guard let imagesDictionary = dictionary["primaryImageMap"] as? [String:[String:Any]] else { return nil }
        // choosing medium images for a balance between quality and memory usage
        guard let imageDictionary = imagesDictionary["medium"] else { return nil }
        guard let _designerName = designerDictionary["name"] as? String else { return nil }
        guard let _priceFormatted = priceDictionary["formattedValue"] as? String else { return nil }
        guard let _priceValue = priceDictionary["value"] as? Double else { return nil }
        guard let _currencyIso = priceDictionary["currencyIso"] as? String else { return nil }
        guard var imageURLString = imageDictionary["url"] as? String else { return nil }
        // This is rather unusual, almost perverse :-)
        // URL strings in the json don't start with the protocol!!!
        // Maybe there is a reason for it in the real app, however I believe that there should
        // be a specification of what is expected from the server and the server devs should test
        // the format of the data they send out.
        //
        // Without going for in depth testing of all products myself, I accept URLs that start with //
        // and just add https to them.
        if imageURLString.starts(with: "//") { imageURLString = "https:" + imageURLString }
        guard let _imageURL = URL(string: imageURLString) else { return nil }
        id = code
        name = _name
        designerName = _designerName
        priceFormatted = _priceFormatted
        priceValue = _priceValue
        currencyIso = _currencyIso
        imageURL = _imageURL
    }
    
    init() {
        id = "1499031"
        name = "Modern Chess Openings book chess set"
        designerName = "Olympia Le-Tan"
        priceFormatted = "€2,134.00"
        priceValue = 2134
        currencyIso = "EUR"
        imageURL = URL(string: "https://assetsprx.matchesfashion.com/img/product/1499031_1_medium.jpg")!
    }
    
}

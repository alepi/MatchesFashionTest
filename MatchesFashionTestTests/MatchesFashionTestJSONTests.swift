//
//  MatchesFashionTestTests.swift
//  MatchesFashionTestTests
//
//  Created by yawmoo_ext on 21/11/22.
//

import XCTest
@testable import MatchesFashionTest

final class MatchesFashionTestJSONTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    func testJSONData() throws {
        let jsonString = TestData.sampleJSON
        guard let jsonData = jsonString.data(using: .utf8) else { XCTFail("cannot turn JSON string into data") ; return }
        guard let d = try? JSONDecoder().decode(ProductsResponseObject.self, from: jsonData) else { XCTFail("cannot decode JSON") ; return }
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

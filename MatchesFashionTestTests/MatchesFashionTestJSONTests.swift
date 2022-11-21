//
//  MatchesFashionTestTests.swift
//  MatchesFashionTestTests
//
//  Created by yawmoo_ext on 21/11/22.
//

import XCTest
@testable import MatchesFashionTest

// NOTICE: there are no network call tests as those tests may fail due to
// several different reasons such as lack of internet connection and similar.
//
// To test the accuracy of the data returned by the server one should use
// the tests on the server itself.
//
// Bad networking conditions should be tested elsewhere

final class MatchesFashionTestJSONTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    // this test exists only because the JSON sample being so big and the
    // text contained escape sequences for tab characters
    func testJSONData() throws {
        let jsonString = TestData.sampleJSONString
        guard let jsonData = jsonString.data(using: .utf8) else { XCTFail("cannot turn JSON string into data") ; return }
        let products = Product.ParseJSON(jsonData)
        XCTAssert(products.count>0, "cannot decode json string")
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

import Foundation
import XCTest
@testable import ApeWisdom

class FilterURLBuilderTests: XCTestCase {
    
    private var baseURL: String {
        ApeWisdom.shared.baseUrl
    }
    
    func testFetchAll() {
        let filter: Filter = .all
        let url = FilterURLBuilder.build(filter: filter)
        XCTAssertEqual(url?.absoluteString, "\(baseURL)/filter/all")
    }
}

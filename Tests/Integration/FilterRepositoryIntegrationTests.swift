import Foundation
import XCTest
@testable import ApeWisdom

@available(macOS 12, iOS 15, *)
class FilterRepositoryIntegrationTests: XCTestCase {
    
    @MainActor
    func testFetchAllFirstPage() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .all
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchAllSecondPage() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .all
        let page: Int = 3
        
        let result = try await FilterRepository.list(filter: filter, page: page)
        XCTAssertNotEqual(result.results.count, 0)
        XCTAssertEqual(result.currentPage, page)
    }
    
    @MainActor
    func testFetchAllStocks() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .allStocks
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchAllCrypto() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .allCrypto
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchWebsite4Chan() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .website4chan
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchCryptoCurrency() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .cryptoCurrency
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchCryptoCurrencies() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .cryptoCurrencies
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchBitcoin() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .bitcoin
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchSatoshiStreetBets() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .satoshiStreetBets
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchCryptoMoonShots() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .cryptoMoonShots
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchCryptoMarkets() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .cryptoMarkets
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchStocks() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .stocks
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchWallStreetBets() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .wallStreetBets
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchOptions() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .options
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchWallStreetBetsElite() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .wallStreetBetsElite
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchWallStreetBetsNew() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .wallStreetBetsNew
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchSPACs() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .sPACs
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchInvesting() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .investing
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
    
    @MainActor
    func testFetchDayTrading() async throws {
        let FilterRepository = FilterRepository.shared
        let filter: Filter = .dayTrading
        
        let result = try await FilterRepository.list(filter: filter)
        XCTAssertNotEqual(result.results.count, 0)
    }
}

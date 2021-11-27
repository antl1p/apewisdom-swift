import Foundation

public struct MentionResponse: Codable {
    let count: Int
    let pages: Int
    let currentPage: Int
    let results: [Mention]
    
    enum CodingKeys: String, CodingKey {
        case count
        case pages
        case currentPage = "current_page"
        case results
    }
}

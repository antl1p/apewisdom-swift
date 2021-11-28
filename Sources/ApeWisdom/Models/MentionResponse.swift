import Foundation

public struct MentionResponse: Codable {
    public let count: Int
    public let pages: Int
    public let currentPage: Int
    public let results: [Mention]
    
    enum CodingKeys: String, CodingKey {
        case count
        case pages
        case currentPage = "current_page"
        case results
    }
}

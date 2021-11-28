import Foundation

public struct Mention: Codable {
    public let rank: Int
    public let ticker: String
    public let name: String
    public let mentions: String?
    public let upvotes: String?
    public let last24HourRank: String?
    public let last24HourMentions: String?
    
        .enum CodingKeys: String, CodingKey {
        case rank
        case ticker
        case name
        case mentions
        case upvotes
        case last24HourRank = "rank_24h_ago"
        case last24HourMentions = "mentions_24h_ago"
    }
}

import Foundation

public struct Mention: Codable {
    let rank: Int
    let ticker: String
    let name: String
    let mentions: String?
    let upvotes: String?
    let last24HourRank: String?
    let last24HourMentions: String?
    
    enum CodingKeys: String, CodingKey {
        case rank
        case ticker
        case name
        case mentions
        case upvotes
        case last24HourRank = "rank_24h_ago"
        case last24HourMentions = "mentions_24h_ago"
    }
}

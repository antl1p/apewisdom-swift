import Foundation

public class FilterRepository {
    public static let shared: FilterRepository = FilterRepository()
    
    enum Error: Swift.Error {
        case invalidURL
        case unsupportedVersion
    }
    
    @available(macOS 12, iOS 13, *)
    func list(filter: Filter, page: Int? = nil) async throws -> MentionResponse {
        guard let url = FilterURLBuilder.build(filter: filter, page: page) else {
            throw Error.invalidURL
        }
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        return try JSONDecoder().decode(MentionResponse.self, from: data)
    }
}

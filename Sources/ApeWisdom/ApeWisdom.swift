public struct ApeWisdom {
    public static var shared: ApeWisdom = ApeWisdom()
    
    var baseUrl: String = "https://apewisdom.io/api/v1.0"
    
    @available(macOS 12, iOS 13, *)
    func filter(_ filter: Filter, page: Int? = nil) async throws -> MentionResponse {
        try await FilterRepository.shared.list(filter: filter, page: page)
    }
}

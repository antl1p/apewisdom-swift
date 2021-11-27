import Foundation

class FilterURLBuilder {
    private static var baseURL: String {
        ApeWisdom.shared.baseUrl
    }
    
    private static var filterPath: String {
        "/filter/"
    }
    
    private static var pagePath: String {
        "/page/"
    }
    
    static func build(filter: Filter, page: Int? = nil) -> URL? {
        var builder = URLComponents(string: Self.baseURL)
        builder?.path.append(contentsOf: Self.filterPath)
        builder?.path.append(contentsOf: filter.rawValue)
        
        if let page = page {
            builder?.path.append(contentsOf: Self.pagePath)
            builder?.path.append(contentsOf: "\(page)")
        }
        return builder?.url
    }
}

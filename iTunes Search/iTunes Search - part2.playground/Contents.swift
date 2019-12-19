import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

extension URL{
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

struct StoreItem: Codable {
    var title: String
    var artist: String
    var kind: String
    var artwork: URL
    var description: String
   
   
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artist = "artistName"
        case kind
        case artwork = "artworkUrl100"
        case description
        
    }
    enum AdditionKeys: String, CodingKey {
        case longDescription
    }
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.title = try valueContainer.decode(String.self, forKey: CodingKeys.title)
        self.artist = try valueContainer.decode(String.self, forKey: CodingKeys.artist)
        self.kind = try valueContainer.decode(String.self, forKey: CodingKeys.kind)
        self.artwork = try valueContainer.decode(URL.self, forKey: CodingKeys.artwork)
        
        if let description = try? valueContainer.decode(String.self, forKey: CodingKeys.description) {
            self.description = description
        } else {
            let additionalValue = try decoder.container(keyedBy: AdditionKeys.self)
            self.description = (try? additionalValue.decode(String.self, forKey: AdditionKeys.longDescription)) ?? ""
        }
    }
}

struct StoreItems: Codable {
    let results: [StoreItem]
}

func fetchItems(matching query: [String: String], completion: @escaping ([StoreItem]?) -> Void) {
    let baseURl = URL(string: "https://itunes.apple.com/search")!
   
    let url = baseURl.withQueries(query)!
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let jsonDecoder = JSONDecoder()
        
        if let data = data,
            let storeItems = try? jsonDecoder.decode(StoreItems.self, from: data) {
            completion(storeItems.results)
        } else {
            print("Either no data was returned, or data was bow serialized.")
            completion(nil)
        }
    }
    task.resume()
}
let  query = [
    "term": "steve jobs",
    "media": "ebook",
    "limit": "20"
]

fetchItems(matching: query) { (items) in
    if let items = items {
        print(items)
    }
}

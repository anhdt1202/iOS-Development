//
//  StoreItemController.swift
//  iTunesSearch
//
//  Created by AnhDT on 12/19/19.
//  Copyright © 2019 Caleb Hicks. All rights reserved.
//

import UIKit
class StoreItemController {
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
 func fetchItemArtwork(url: URL, completion: @escaping (UIImage?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data,
                let image = UIImage(data: data) {
                completion(image)
            } else {
                completion(nil)
            }
        }
        
        task.resume()
    }
}


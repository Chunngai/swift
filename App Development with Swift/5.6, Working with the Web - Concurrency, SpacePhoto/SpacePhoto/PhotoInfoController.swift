//
//  PhotoInfoController.swift
//  SpacePhoto
//
//  Created by Sola on 2020/2/5.
//  Copyright © 2020 Sola. All rights reserved.
//

import Foundation

class PhotoInfoController {
    func fetchPhtoInfo(completion: @escaping (PhotoInfo?) -> Void) {
        let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!
        
        let query: [String: String] = ["api_key": "DEMO_KEY"]
        
        let url = baseURL.withQueries(query)!
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data, let photoInfo = try? jsonDecoder.decode(PhotoInfo.self, from: data) {
                completion(photoInfo)
            } else {
                print("Either no data was returned, or data was not serialized.")
                completion(nil)
            }
        }
        task.resume()
    }
}

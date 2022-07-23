//
//  APICaller.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-17.
//

import Foundation




// MARK: - Category
    
/* public func getTasks(completion: (Result<String, Error>) -> Void) {
    CFHTTPMessageCreateRequest(with: URL(string: Constants.baseAPIURL + "/browse/categories?limit=2"), type: .GET)
    { request in
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else{
                completion(.failure(APIError.failedtoGetData))
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print(json)
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
} */

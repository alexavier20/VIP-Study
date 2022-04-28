//
//  HomeService.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

enum APIError: Error {
    case generic
}

protocol HomeServicing: AnyObject {
    func fetch(completion: @escaping ((Result<User, APIError>) -> Void))}

final class HomeService: HomeServicing {
    func fetch(completion: @escaping ((Result<User, APIError>) -> Void)) {
        let apiURL = "https://api.github.com/users/alexavier20"
        
        guard let api = URL(string: apiURL) else {
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: api) { (data, response, error) in
            guard let jsonData = data else {
                return
            }
            DispatchQueue.main.async {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let decoded = try decoder.decode(User.self, from: jsonData)
                    
                    completion(.success(decoded))
                } catch {
                    completion(.failure(.generic))
                }
            }
        }
        
        task.resume()
    }
}

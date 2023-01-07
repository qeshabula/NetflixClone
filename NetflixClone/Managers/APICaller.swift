//
//  APICaller.swift
//  NetflixClone
//
//  Created by Bula on 1/7/23.
//

import Foundation

struct Constants {
    static let API_KEY = "bd353ae1d6613807ff3223b9e2823331"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TredingMoviesResponse.self, from: data)
                completion(.success(results.results))

            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}

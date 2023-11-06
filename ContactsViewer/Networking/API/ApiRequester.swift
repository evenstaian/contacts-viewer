//
//  ApiRequester.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import Foundation

enum NetworkError : Error {
    case notFound
}

class ApiRequester {
    private func getConfiguration() -> URLSessionConfiguration {
        
        let config = URLSessionConfiguration.default
        config.httpAdditionalHeaders = [
            "Content-Type" : "application/json"]
        config.requestCachePolicy = .returnCacheDataElseLoad
        return config
    }

    private func getSession() -> URLSession{
        return URLSession(configuration: getConfiguration())
    }
    
    func getContacts(completion: @escaping(Result<[Contact], NetworkError>) -> Void){
        let url = URL(string: ApiConstants.baseURL)
        let request = URLRequest(url: url!)
        
        let dataTask = getSession().dataTask(with: request) { data, response, error in
            if error == nil {
                do {
                    if let data = data {
                        let contactsResponse : [Contact] = try JSONDecoder().decode([Contact].self, from: data)
                        completion(.success(contactsResponse))
                    }
                } catch {
                    completion(.failure(.notFound))
                }
            } else {
                completion(.failure(.notFound))
            }
        }
        
        dataTask.resume()
        
    }
}

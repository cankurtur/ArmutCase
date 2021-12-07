//
//  Networking.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import Foundation
import Alamofire

protocol ServiceErrorDelegate: AnyObject {
    func throwEror()
}

/// This class use for network requests
class Networking {
    weak var delegate: ServiceErrorDelegate?

    func performRequest<T: Codable>(url: String, completion: @escaping((Result<T, Error>) -> Void)) {
        let url = url
        AF.request(url, method: .get).validate().response { responseData in
            if responseData.error != nil {
                self.delegate?.throwEror()
                print(responseData.error)
            } else {
                do {
                    guard let data = responseData.data else { return }
                    let object = try JSONDecoder().decode(T.self, from: data)
                    completion(Result.success(object))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }
    }
}

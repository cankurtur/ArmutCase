//
//  Networking.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import Alamofire
import Foundation

protocol ServiceErrorDelegate: AnyObject {
    func networking(_ networking: Networking, didThrow error: AFError)
}

/// This class use for network requests
class Networking {

    //MARK: - Properties
    static let shared = Networking()

    weak var delegate: ServiceErrorDelegate?

    //MARK: - Business Logic

    func performRequest<T: Codable>(url: String, completion: @escaping((Result<T, Error>) -> Void)) {
        let url = url
        AF.request(url, method: .get).validate().response { responseData in
            if responseData.error != nil {
                self.delegate?.networking(self, didThrow: responseData.error!)
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

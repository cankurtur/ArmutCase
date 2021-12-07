//
//  DetailsViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import Foundation

class DetailsViewModel {
    // MARK: - Properties
    weak var delegate: ServiceErrorDelegate?
    let networking = Networking()
    let workAndInformationViewModel = WorkInformationViewModel.init()

    // MARK: - Business Logic
    func fetchDetailsData(serviceID: Int, completion: @escaping(DetailsUIModel) -> Void) {
        let detailsEndPoint = APIConstants.detailsURL + "\(serviceID)"

        networking.performRequest(url: detailsEndPoint) { (result: Result<DetailsResponseModel, Error>) in
            switch result {
            case .success(let detailsResponseModel):
                let detailsUIModel = DetailsUIModel.init(from: detailsResponseModel)
                completion(detailsUIModel)
            case .failure(let error):
                print(error)
            }
        }
    }
}

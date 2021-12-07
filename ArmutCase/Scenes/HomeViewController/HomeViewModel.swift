//
//  HomeViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

struct HomeViewModel {

    // MARK: - Properties

    let networking = Networking()
    let searchViewModel = SearchViewModel()
    let campaignViewModel = CampaignViewModel()
    
    // MARK: - Business Logic

    func fetchHomeData(completion: @escaping(HomeUIModel) -> Void) {
        networking.performRequest(url: APIConstants.homeURL) { (result: Result<HomeResponseModel, Error>) in
            switch result {
            case .success(let homeResponseModel):
                let homeUIModel = HomeUIModel(from: homeResponseModel)
                completion(homeUIModel)
            case .failure(let error):
                print(error)
            }
        }
    }
}

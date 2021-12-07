//
//  HomeViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

struct HomeViewModel {

    // MARK: - Properties

    let searchViewModel = SearchViewModel()
    let campaignViewModel = CampaignViewModel()
    
    // MARK: - Business Logic

    func fetchHomeData(completion: @escaping(HomeUIModel) -> Void) {
            Networking.shared.performRequest(url: APIConstants.homeURL) { (result: Result<HomeResponseModel, Error>) in
            switch result {
            case .success(let homeResponseModel):
                let homeUIModel = HomeUIModel(from: homeResponseModel)
                completion(homeUIModel)
            case .failure(let error):
                print(error)
            }
        }
    }

    func showDetailsVC(vc: HomeViewController, id: Int) {
        if let detailsVC = UIStoryboard(name: "Details", bundle: nil).instantiateInitialViewController() as? DetailsViewController {
            detailsVC.serviceID = id
            vc.present(detailsVC, animated: true, completion: nil)
        }
    }
}

//
//  HomeViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

struct HomeViewModel {
    // MARK: - Properties
    let searchViewModel: SearchViewModel
    let campaignViewModel: CampaignViewModel

    // MARK: - Initializers
    init() {
        self.searchViewModel = SearchViewModel(
            titleText: "Hizmet piş ağzıma düş",
            headerImage: .headerImage
        )
        self.campaignViewModel = CampaignViewModel(
            campaignImage: .weddingImage,
            campaignTitleText: "FIRST TIME NEWLY WEDS",
            campaignOfferText: "WEDDING PHOTOGRAPHERS FROM 540 TL",
            discountText: "-15% İNDİRİM"
        )
    }
}

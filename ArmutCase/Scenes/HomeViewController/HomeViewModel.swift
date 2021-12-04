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
    let serviceAreasViewModel: ServiceAreasViewModel

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
        self.serviceAreasViewModel = ServiceAreasViewModel(
            titleText: "All services",
            content: [ButtonAndTitleViewModel(buttonImage: .transportationIcon, buttonTitleText: "Tadilat"), ButtonAndTitleViewModel(buttonImage: .cleaningIcon, buttonTitleText: "Temizlik"), ButtonAndTitleViewModel(buttonImage: .transportationIcon, buttonTitleText: "Nakliyat"), ButtonAndTitleViewModel(buttonImage: .cleaningIcon, buttonTitleText: "Tamir"), ButtonAndTitleViewModel(buttonImage: .transportationIcon, buttonTitleText: "Ozel Ders"), ButtonAndTitleViewModel(buttonImage: .cleaningIcon, buttonTitleText: "Saglik"), ButtonAndTitleViewModel(buttonImage: .transportationIcon, buttonTitleText: "Dugun"), ButtonAndTitleViewModel(buttonImage: .cleaningIcon, buttonTitleText: "Diger")])
    }
}

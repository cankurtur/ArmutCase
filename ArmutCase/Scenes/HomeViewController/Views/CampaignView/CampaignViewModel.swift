//
//  CampaignViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

struct CampaignViewModel {
    // MARK: - Properties
    let campaignImage: UIImage
    let campaignTitleText: String
    let campaignOfferText: String
    let discountText: String

    // MARK: - Initializer
    init() {
        self.campaignImage =  .weddingImage
        self.campaignTitleText = "FIRST TIME NEWLY WEDS"
        self.campaignOfferText = "WEDDING PHOTOGRAPHERS FROM 540 TL"
        self.discountText = "-15% İNDİRİM"
    }
}

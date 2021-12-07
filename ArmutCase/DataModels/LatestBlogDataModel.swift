//
//  LatestBlogDataModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import Foundation

struct LatestBlogDataModel {

    // MARK: - Properties

    let customImageViewModel: CustomImageViewModel
    let categoryText: String
    let titleText: String
    let link: String

    // MARK: - Initializers
    
    init(customImageViewModel: CustomImageViewModel, titleText: String, categoryText: String, link: String) {
        self.customImageViewModel = customImageViewModel
        self.categoryText = categoryText
        self.titleText = titleText
        self.link = link
    }
}

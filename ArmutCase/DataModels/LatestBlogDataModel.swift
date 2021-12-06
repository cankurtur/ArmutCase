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

    // MARK: - Initializers
    init(customImageViewModel: CustomImageViewModel, titleText: String, categoryText: String) {
        self.customImageViewModel = customImageViewModel
        self.categoryText = categoryText
        self.titleText = titleText
    }
}

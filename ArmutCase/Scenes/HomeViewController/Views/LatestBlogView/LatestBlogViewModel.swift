//
//  LatestBlogViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

struct LatestBlogViewModel {
    // MARK: - Properties
    let titleText: String
    let contents: [LatestBlogDataModel]
    var postUIModel: [PostUIModel]

    // MARK: - Initializers
    init(postUIModel: [PostUIModel]) {
        self.postUIModel = postUIModel
        self.titleText = "Latests from the blog"
        var latestBlogDataArray: [LatestBlogDataModel] = []

        for post in postUIModel {
            let latestBlogDataModel = LatestBlogDataModel.init(
                customImageViewModel: CustomImageViewModel.init(
                    imageLink: post.imageURL
                ),
                titleText: post.title,
                categoryText: post.category,
                link: post.link
            )
            latestBlogDataArray.append(latestBlogDataModel)
        }
        self.contents = latestBlogDataArray
    }

    // MARK: - Business Logic
    func openLink(url: URL) {
        UIApplication.shared.openURL(url)
    }
}

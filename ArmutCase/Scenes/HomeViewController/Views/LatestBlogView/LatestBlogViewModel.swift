//
//  LatestBlogViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

struct LatestBlogViewModel {
    // MARK: - Constants
    struct Constants {
        static let collectionLayoutItemFracSize: CGFloat = 1
        static let collectionLayoutGroupHeight: CGFloat = 1
        static let itemCount: Int = 2
        static let contentInstes: NSDirectionalEdgeInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20)
    }

    // MARK: - Properties
    let titleText: String
    let contents: [ContentSubjectsDataModel]
    var postUIModel: [PostUIModel]

    // MARK: - Initializers
    init(postUIModel: [PostUIModel]) {
        self.postUIModel = postUIModel

        self.titleText = "Latests from the blog"

        var latestBlogDataArray: [ContentSubjectsDataModel] = []

        for post in postUIModel {
            let latestBlogDataModel = ContentSubjectsDataModel.init(
                customImageViewModel: CustomImageViewModel.init(
                    imageLink: post.imageURL ?? ""
                ),
                subjectText: post.title
            )
            latestBlogDataArray.append(latestBlogDataModel)
        }
        self.contents = latestBlogDataArray
    }

    // MARK: - Business Logic
    func createLayout() -> UICollectionViewCompositionalLayout {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)
            )
        )

        item.contentInsets = Constants.contentInstes

        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)
            ),
            subitem: item,
            count: 2
        )

        let section = NSCollectionLayoutSection(group: group)
        return UICollectionViewCompositionalLayout(section: section)
    }
}

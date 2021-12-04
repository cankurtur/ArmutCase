//
//  ServiceAreasViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

struct ServiceAreasViewModel {
    // MARK: - Constants
    struct Constants {
        static let collectionLayoutItemFracSize: CGFloat = 1
        static let collectionLayoutGroupHeight: CGFloat = 0.5
        static let itemCount: Int = 4
        static let contentInstes: NSDirectionalEdgeInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 0)
    }

    // MARK: - Properties
    let titleText: String
    let content: [ButtonAndTitleViewModel]

    // MARK: - Business Logic
    func createLayout() -> UICollectionViewCompositionalLayout {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Constants.collectionLayoutItemFracSize),
                heightDimension: .fractionalHeight(Constants.collectionLayoutItemFracSize)
            )
        )

        item.contentInsets = Constants.contentInstes

        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Constants.collectionLayoutItemFracSize),
                heightDimension: .fractionalHeight(Constants.collectionLayoutGroupHeight)
            ),
            subitem: item,
            count: Constants.itemCount
        )

        let section = NSCollectionLayoutSection(group: group)
        return UICollectionViewCompositionalLayout(section: section)
    }
}

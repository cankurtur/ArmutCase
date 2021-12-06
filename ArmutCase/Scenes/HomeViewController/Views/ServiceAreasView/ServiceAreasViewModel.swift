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
    var serviceUIModel: [ServicesUIModel]

    // MARK: - Initializers
    init(serviceUIModel: [ServicesUIModel]) {
        self.serviceUIModel = serviceUIModel
        self.titleText = "All services"


    }

    func getContents() -> [ImageAndTitleViewModel] {
        let content = [
            ImageAndTitleViewModel(serviceImage: .renovationIcon, serviceText: serviceUIModel[0].name),
            ImageAndTitleViewModel(serviceImage: .cleaningIcon, serviceText: serviceUIModel[1].name),
            ImageAndTitleViewModel(serviceImage: .transportationIcon, serviceText: serviceUIModel[2].name),
            ImageAndTitleViewModel(serviceImage: .fixIcon, serviceText: serviceUIModel[3].name),
            ImageAndTitleViewModel(serviceImage: .privateLessonIcon, serviceText: serviceUIModel[4].name),
            ImageAndTitleViewModel(serviceImage: .healthIcon, serviceText: serviceUIModel[5].name.splitTheFirstWord()),
            ImageAndTitleViewModel(serviceImage: .weddingIcon, serviceText: serviceUIModel[6].name.splitTheFirstWord()),
            ImageAndTitleViewModel(serviceImage: .otherIcon, serviceText: serviceUIModel[7].name),
        ]
        return content
    }


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

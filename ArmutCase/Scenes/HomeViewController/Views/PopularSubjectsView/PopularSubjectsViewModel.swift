//
//  PopularSubjectsViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

struct PopularSubjectsViewModel {
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
    var servicesUIModel: [ServicesUIModel]

    // MARK: - Initializers
    init(servicesUIModel: [ServicesUIModel]) {
        self.servicesUIModel = servicesUIModel

        self.titleText = "Popular these days"

        var popularDataArray: [ContentSubjectsDataModel] = []

        for service in servicesUIModel {
            let popularSubjectDataModel = ContentSubjectsDataModel.init(
                customImageViewModel: CustomImageViewModel.init(
                    imageLink: service.imageURL ?? ""
                ),
                subjectText: service.name
            )
            popularDataArray.append(popularSubjectDataModel)
        }
        self.contents = popularDataArray
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

//
//  PopularSubjectsViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

struct PopularSubjectsViewModel {
    // MARK: - Properties
    let titleText: String
    let contents: [PopularSubjectsDataModel]
    var servicesUIModel: [ServicesUIModel]

    // MARK: - Initializers
    init(servicesUIModel: [ServicesUIModel]) {
        self.servicesUIModel = servicesUIModel
        self.titleText = "Popular these days"
        var popularDataArray: [PopularSubjectsDataModel] = []

        for service in servicesUIModel {
            let popularSubjectDataModel = PopularSubjectsDataModel.init(
                customImageViewModel: CustomImageViewModel.init(
                    imageLink: service.imageURL ?? ""
                ),
                subjectText: service.name
            )
            popularDataArray.append(popularSubjectDataModel)
        }
        self.contents = popularDataArray
    }
}

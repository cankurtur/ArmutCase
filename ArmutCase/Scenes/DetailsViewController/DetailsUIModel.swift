//
//  DetailsUIModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import Foundation

struct DetailsUIModel {
    // MARK: - Properties
    let id: Int
    let serviceID: Int
    let name: String
    let longName: String
    let imageURL: String
    let proCount: Int
    let averageRating: Double
    let completedJobsOnLastMonth: Int

    // MARK: - Initializer
    init(from response: DetailsResponseModel) {
        self.id = response.id
        self.serviceID = response.serviceID
        self.name = response.name
        self.longName = response.longName
        self.imageURL = response.imageURL
        self.proCount = response.proCount
        self.averageRating = response.averageRating
        self.completedJobsOnLastMonth = response.completedJobsOnLastMonth
    }
}

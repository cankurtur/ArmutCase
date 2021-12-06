//
//  DetailsResponseModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import Foundation

struct DetailsResponseModel: Codable {
    let id: Int
    let serviceID: Int
    let name: String
    let longName: String
    let imageURL: String
    let proCount: Int
    let averageRating: Double
    let completedJobsOnLastMonth: Int

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case serviceID = "service_id"
        case name = "name"
        case longName = "long_name"
        case imageURL = "image_url"
        case proCount = "pro_count"
        case averageRating = "average_rating"
        case completedJobsOnLastMonth = "completed_jobs_on_last_month"
    }

}

//
//  HomeResponseModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import Foundation

struct HomeResponseModel: Codable {
    let allServices: [Services]
    let popular: [Services]
    let posts: [Post]

    private enum CodingKeys: String, CodingKey {
        case allServices = "all_services"
        case popular = "popular"
        case posts = "posts"
    }
}

struct Services: Codable {
    let id: Int
    let serviceID: Int
    let name: String
    let longName: String
    let imageURL: String?
    let proCount: Int?

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case serviceID = "service_id"
        case name = "name"
        case longName = "long_name"
        case imageURL = "image_url"
        case proCount = "pro_count"
    }
}

struct Post: Codable {
    let title: String
    let category: String
    let imageURL: String
    let link: String

    private enum CodingKeys: String, CodingKey {
        case title = "title"
        case category = "category"
        case imageURL = "image_url"
        case link = "link"
    }
}

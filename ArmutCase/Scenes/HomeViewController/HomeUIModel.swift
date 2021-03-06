//
//  HomeUIModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import Foundation

struct HomeUIModel {

    // MARK: - Properties

    let allServices: [ServicesUIModel]?
    let popular: [ServicesUIModel]?
    let posts: [PostUIModel]?

    // MARK: - Initializer

    init(from response: HomeResponseModel) {
        self.allServices = response.allServices.map { .init(from: $0) }
        self.popular = response.popular.map { .init(from: $0) }
        self.posts = response.posts.map { .init(from: $0) }
    }
}

struct ServicesUIModel {

    // MARK: - Properties

    let id: Int
    let serviceID: Int
    let name: String
    let longName: String
    let imageURL: String?
    let proCount: Int?

    // MARK: - Initializer

    init(from response: Services) {
        self.id = response.id
        self.serviceID = response.serviceID
        self.name = response.name
        self.longName = response.longName
        self.imageURL = response.imageURL
        self.proCount = response.proCount
    }
}

struct PostUIModel {

    // MARK: - Properties

    let title: String
    let category: String
    let imageURL: String
    let link: String

    // MARK: - Initializer
    
    init(from response: Post) {
        self.title = response.title
        self.category = response.category
        self.imageURL = response.imageURL
        self.link = response.link
    }
}

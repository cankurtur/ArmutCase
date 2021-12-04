//
//  Images.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class Images {
    // MARK: - Properties
    static let headerImage: UIImage = getImage(imageName: "headerImage")
    static let miniSearchIcon: UIImage = getImage(imageName: "miniSearchIcon")
    static let weddingImage: UIImage = getImage(imageName: "weddingImage")
    static let transportationIcon: UIImage = getImage(imageName: "transportationIcon")
    static let cleaningIcon: UIImage = getImage(imageName: "cleaningIcon")
    static let dummyImage: UIImage = getImage(imageName: "dummyImage")

    // To add new UIImage we have to use this function below
    static func getImage(imageName: String) -> UIImage {
        guard let image = UIImage(named: imageName) else {
            return UIImage()
        }
        return image
    }
}

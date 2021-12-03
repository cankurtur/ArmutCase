//
//  Images.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class Images {
    // MARK: - Properties
    static let header: UIImage = getImage(imageName: "header")
    static let iconMiniSearch: UIImage = getImage(imageName: "iconMiniSearch")
    static let wedding: UIImage = getImage(imageName: "wedding")
    static let transportation: UIImage = getImage(imageName: "transportation")
    static let cleaning: UIImage = getImage(imageName: "cleaning")

    // To add new UIImage we have to use this function below
    static func getImage(imageName: String) -> UIImage {
        guard let image = UIImage(named: imageName) else {
            return UIImage()
        }
        return image
    }
}

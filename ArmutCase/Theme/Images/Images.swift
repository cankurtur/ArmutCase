//
//  Images.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class Images {
    // MARK: - Properties
    static let cleaningIcon: UIImage = getImage(imageName: "cleaningIcon")
    static let dummyImage: UIImage = getImage(imageName: "dummyImage")
    static let fixIcon: UIImage = getImage(imageName: "fixIcon")
    static let headerImage: UIImage = getImage(imageName: "headerImage")
    static let healthIcon: UIImage = getImage(imageName: "healthIcon")
    static let jobDoneOrangeIcon: UIImage = getImage(imageName: "jobDoneOrangeIcon")
    static let miniSearchIcon: UIImage = getImage(imageName: "miniSearchIcon")
    static let otherIcon: UIImage = getImage(imageName: "otherIcon")
    static let privateLessonIcon: UIImage = getImage(imageName: "privateLessonIcon")
    static let professionalNumberOrangeIcon: UIImage = getImage(imageName: "professionalNumberOrangeIcon")
    static let renovationIcon: UIImage = getImage(imageName: "renovationIcon")
    static let serviceGuaranteeOrangeIcon: UIImage = getImage(imageName: "serviceGuaranteeOrangeIcon")
    static let starAverageIcon: UIImage = getImage(imageName: "starAverageIcon")
    static let transportationIcon: UIImage = getImage(imageName: "transportationIcon")
    static let useFreeOrangeIcon: UIImage = getImage(imageName: "useFreeOrangeIcon")
    static let weddingIcon: UIImage = getImage(imageName: "weddingIcon")
    static let weddingImage: UIImage = getImage(imageName: "weddingImage")

    // To add new UIImage we have to use this function below
    static func getImage(imageName: String) -> UIImage {
        guard let image = UIImage(named: imageName) else {
            return UIImage()
        }
        return image
    }
}

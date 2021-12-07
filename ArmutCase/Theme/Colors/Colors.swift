//
//  Colors.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class Colors {

    // MARK: - Properties
    
    static let almostWhite: UIColor = getColor(colorName: "almostWhite")
    static let campaignGreen: UIColor = getColor(colorName: "campaignGreen")
    
    // To add new UIColor we have to use this function below
    static func getColor(colorName: String) -> UIColor {
        guard let color = UIColor(named: colorName) else {
            return UIColor.white
        }
        return color
    }
}

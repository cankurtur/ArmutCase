//
//  ButtonAndTitleViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

struct ButtonAndTitleViewModel {
    // MARK: - Properties
    let buttonImage: UIImage
    let buttonTitleText: String
    let clickAction: (() -> Void)?
}

//
//  WorkInformationViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import Foundation

struct WorkInformationViewModel {

    // MARK: - Properties

    let titleText: String
    let firstCircleModel: CircleAndLabelViewModel
    let secondCircleModel: CircleAndLabelViewModel
    let thirdCircleModel: CircleAndLabelViewModel
    
    // MARK: - Initializer
    
    init() {
        titleText = "How it works"
        firstCircleModel = CircleAndLabelViewModel(circleNumberText: "1", stepText: "Answer the questions")
        secondCircleModel = CircleAndLabelViewModel(circleNumberText: "2", stepText: "Get Quotes")
        thirdCircleModel = CircleAndLabelViewModel(circleNumberText: "3", stepText: "Compare the prices and decide")
    }
}

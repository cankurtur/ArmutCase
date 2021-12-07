//
//  PopularSubjectsDataModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 5.12.2021.
//

import Foundation

struct PopularSubjectsDataModel {

    // MARK: - Properties

    let customImageViewModel: CustomImageViewModel
    let subjectText: String
    
    // MARK: - Initializers

    init(customImageViewModel: CustomImageViewModel, subjectText: String) {
        self.customImageViewModel = customImageViewModel
        self.subjectText = subjectText
    }
}

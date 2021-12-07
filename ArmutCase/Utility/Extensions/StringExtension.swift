//
//  StringExtension.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import Foundation

extension String {
    
    /// This function splits the words in string by space and return the first word
    func splitTheFirstWord() -> String {
        let components = self.components(separatedBy: " ")
        return components.first ?? "No Value"
    }
}

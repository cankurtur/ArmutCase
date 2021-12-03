//
//  HomeViewModel.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

struct HomeViewModel {
    // MARK: - Properties
    let searchViewModel: SearchViewModel

    // MARK: - Initializers
    init() {
        self.searchViewModel = SearchViewModel(
            titleText: "Hizmet piş ağzıma düş",
            headerImage: .headerImage
        )
    }
}

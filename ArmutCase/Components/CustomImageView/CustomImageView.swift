//
//  CustomImageView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit
import Kingfisher

class CustomImageView: UIImageView {
    // MARK: - Business Logic
    func configure(viewModel: CustomImageViewModel) {
        image = .dummyImage
        if !viewModel.imageLink.isEmpty {
            let imageURL = URL(string: viewModel.imageLink)
            self.kf.setImage(with: imageURL)
        }
    }
}

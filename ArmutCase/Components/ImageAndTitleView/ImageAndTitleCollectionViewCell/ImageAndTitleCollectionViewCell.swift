//
//  ImageAndTitleCollectionViewCell.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class ImageAndTitleCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlets

    @IBOutlet private weak var imageAndTitleView: ImageAndTitleView!

    // MARK: - Life Cycles

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // MARK: - Business Logic
    
    func configure(imageAndTitleViewModel: ImageAndTitleViewModel) {
        imageAndTitleView.configure(viewModel: imageAndTitleViewModel)
    }
}

//
//  LatestBlogCustomCollectionViewCell.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class LatestBlogCustomCollectionViewCell: UICollectionViewCell {
    // MARK: - Constant
    private struct Constants {
        static let cornerRadius: CGFloat = 8
    }
    
    // MARK: - IBOutlets
    @IBOutlet private weak var holderView: UIView!
    @IBOutlet private weak var customImageView: CustomImageView!
    @IBOutlet private weak var categoryTitleLabel: UILabel!
    @IBOutlet private weak var subjectTitleLabel: UILabel!

    // MARK: - Life Cycles
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    // MARK: - Business Logic
    private func setupUI() {
        holderView.layer.cornerRadius = Constants.cornerRadius
        holderView.layer.masksToBounds = true
    }

    func configure(dataModel: LatestBlogDataModel) {
        customImageView.configure(viewModel: dataModel.customImageViewModel)
        categoryTitleLabel.text = dataModel.categoryText
        subjectTitleLabel.text = dataModel.titleText
    }
}

//
//  PopularSubjectCustomCollectionViewCell.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

class PopularSubjectCustomCollectionViewCell: UICollectionViewCell {
    // MARK: - Constant
    private struct Constants {
        static let cornerRadius: CGFloat = 8
    }
    
    // MARK: - IBOutlets
    @IBOutlet private weak var imageHolderView: UIView!
    @IBOutlet private weak var customImageView: CustomImageView!
    @IBOutlet private weak var subjectLabel: UILabel!

    // MARK: - Life Cycles
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    // MARK: - Business Logic
    private func setupUI() {
        imageHolderView.layer.cornerRadius = Constants.cornerRadius
        imageHolderView.layer.masksToBounds = true
    }

    func configure(dataModel: PopularSubjectsDataModel) {
        customImageView.configure(viewModel: dataModel.customImageViewModel)
        subjectLabel.text = dataModel.subjectText
    }
}

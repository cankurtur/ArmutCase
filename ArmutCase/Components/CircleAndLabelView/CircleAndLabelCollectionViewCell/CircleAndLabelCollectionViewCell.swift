//
//  CircleAndLabelCollectionViewCell.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class CircleAndLabelCollectionViewCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet private weak var circleAndLabelView: CircleAndLabelView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(model: CircleAndLabelViewModel) {
        circleAndLabelView.configure(viewModel: model)
    }
}

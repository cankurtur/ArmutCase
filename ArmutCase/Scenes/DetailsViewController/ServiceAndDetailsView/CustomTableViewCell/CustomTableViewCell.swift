//
//  CustomTableViewCell.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet private weak var iconAndTitleView: IconAndTitleView!

    // MARK: - Life Cycles
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK:- Business Logic
    func configure(model: IconAndTitleViewModel) {
        iconAndTitleView.configure(viewModel: model)
    }
}

//
//  ButtonAndTitleCollectionViewCell.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

class ButtonAndTitleCollectionViewCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var buttonAndTitleView: ButtonAndTitleView!
    
    // MARK: - Life Cycles
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Business Logic
    func configure(buttonAndTitleViewModel: ButtonAndTitleViewModel) {
        buttonAndTitleView.configure(viewModel: buttonAndTitleViewModel)
    }
}

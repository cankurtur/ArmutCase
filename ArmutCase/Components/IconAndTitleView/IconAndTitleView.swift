//
//  IconAndTitleView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class IconAndTitleView: UIView {

    // MARK: - IBOutlets

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!

    // MARK: - Setup
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        let view = nibInstantiate(autoResizingMask: [.flexibleHeight, .flexibleWidth])
        view.frame = self.bounds
        addSubview(view)
    }

    // MARK: - Business Logic
    
    func configure(viewModel: IconAndTitleViewModel) {
        imageView.image = viewModel.icon
        titleLabel.text = viewModel.title
    }
}

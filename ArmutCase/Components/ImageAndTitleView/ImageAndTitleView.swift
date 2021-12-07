//
//  ImageAndTitleView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class ImageAndTitleView: UIView {
    // MARK: - Constant
    private struct Constants {
        static let cornerRadius: CGFloat = 8
    }

    // MARK: - IBOutlets
    @IBOutlet private weak var serviceImageView: UIImageView!
    @IBOutlet private weak var serviceTitle: UILabel!
 
    // MARK: - Properties
    private var viewModel: ImageAndTitleViewModel?

    // MARK: - Business Logic
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
        setupUI()
    }

    private func setupUI() {
        backgroundColor = .almostWhite
        layer.cornerRadius = Constants.cornerRadius
        layer.masksToBounds = true
    }

    func configure(viewModel: ImageAndTitleViewModel) {
        self.viewModel = viewModel
        serviceImageView.image = viewModel.serviceImage
        serviceTitle.text = viewModel.serviceText
    }
}

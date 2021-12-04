//
//  ButtonAndTitleView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

class ButtonAndTitleView: UIView {
    // MARK: - Constant
    private struct Constants {
        static let cornerRadius: CGFloat = 8
    }
    
    // MARK: - IBOutlets
    @IBOutlet private weak var serviceButton: UIButton!
    @IBOutlet private weak var serviceTitle: UILabel!

    // MARK: - Properties
    private var viewModel: ButtonAndTitleViewModel?

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

    func configure(viewModel: ButtonAndTitleViewModel) {
        self.viewModel = viewModel
        serviceButton.setImage(viewModel.buttonImage, for: .normal)
        serviceTitle.text = viewModel.buttonTitleText
    }

    @IBAction func buttonClicked() {
        guard let action = viewModel?.clickAction else { return }

        action()
    }
}

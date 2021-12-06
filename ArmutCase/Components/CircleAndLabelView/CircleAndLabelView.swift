//
//  CircleAndLabelView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class CircleAndLabelView: UIView {
    // MARK: - IBOutlets
    @IBOutlet private weak var circleView: UIView!
    @IBOutlet private weak var circleLabel: UILabel!
    @IBOutlet private weak var stepLabel: UILabel!

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
        setupCircleView()
    }

    private func setupCircleView() {
        circleView.layer.borderWidth = 1
        circleView.layer.borderColor = UIColor.lightGray.cgColor
        circleView.layer.masksToBounds = false
        circleView.layer.cornerRadius = 44
        circleView.clipsToBounds = true
    }

    func configure(viewModel: CircleAndLabelViewModel) {
        self.circleLabel.text = viewModel.circleNumberText
        self.stepLabel.text = viewModel.stepText
    }
}

//
//  WorkInformationView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class WorkInformationView: UIView {
    // MARK: - IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var firstCircleView: CircleAndLabelView!
    @IBOutlet private weak var secondCircleView: CircleAndLabelView!
    @IBOutlet private weak var thirdCircleView: CircleAndLabelView!

    // MARK: - Properties
    private var elementArray: [CircleAndLabelViewModel]?

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
    }
    
    func configure(viewModel: WorkInformationViewModel) {
        titleLabel.text = viewModel.titleText
        firstCircleView.configure(viewModel: viewModel.firstCircleModel)
        secondCircleView.configure(viewModel: viewModel.secondCircleModel)
        thirdCircleView.configure(viewModel: viewModel.thirdCircleModel)
    }
}

//
//  SearchView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class SearchView: UIView {
    // MARK: - IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var headerImageView: UIImageView!
    @IBOutlet private weak var searchTextField: UITextField!

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
        setupSearchTextField()
    }

    private func setupSearchTextField() {
        let leftView = UIView.init(frame: CGRect(x: 0, y: 0, width: 20, height: searchTextField.frame.size.height))
        leftView.backgroundColor = searchTextField.backgroundColor
        searchTextField.leftView = leftView
        searchTextField.leftViewMode = .always
    }

    func configure(viewModel: SearchViewModel) {
        titleLabel.text = viewModel.titleText
        headerImageView.image = viewModel.headerImage
    }
}

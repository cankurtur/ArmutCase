//
//  ServiceAreasView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

class ServiceAreasView: UIView {
    // MARK: - Constants
    struct Constants {
        static let buttonAndTitleCollectionViewCellIdentifier: String = "customButtonAndTitleCell"
        static let buttonAndTitleCollectionViewCellNibName: String = "ButtonAndTitleCollectionViewCell"
    }

    // MARK: - IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var serviceAreasCollectionView: UICollectionView!

    // MARK: - Properties
    private var elementArray: [ButtonAndTitleViewModel]?

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
        setupUICollectionView()
    }

    private func setupUICollectionView() {
        serviceAreasCollectionView.delegate = self
        serviceAreasCollectionView.dataSource = self
        serviceAreasCollectionView.register(
            UINib(nibName: Constants.buttonAndTitleCollectionViewCellNibName, bundle: nil),
            forCellWithReuseIdentifier: Constants.buttonAndTitleCollectionViewCellIdentifier
        )

    }

    func configure(viewModel: ServiceAreasViewModel) {
        titleLabel.text = viewModel.titleText
        elementArray = viewModel.content
        serviceAreasCollectionView.reloadData()
        serviceAreasCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        serviceAreasCollectionView.collectionViewLayout = viewModel.createLayout()
    }
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
extension ServiceAreasView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        elementArray?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = serviceAreasCollectionView.dequeueReusableCell(
            withReuseIdentifier: Constants.buttonAndTitleCollectionViewCellIdentifier,
            for: indexPath
        ) as? ButtonAndTitleCollectionViewCell else {
            return ButtonAndTitleCollectionViewCell()
        }

        if let safeElementArray = elementArray {
            cell.configure(buttonAndTitleViewModel: safeElementArray[indexPath.row])
        }
        return cell
    }
}

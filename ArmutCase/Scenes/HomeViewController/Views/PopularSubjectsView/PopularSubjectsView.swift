//
//  PopularSubjectsView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

class PopularSubjectsView: UIView {

    // MARK: - Constants

    struct Constants {
        static let popularSubjectsCollectionViewCelldentifier: String = "cuctomPopularSubjectCell"
        static let popularSubjectsCollectionViewCellNibName: String = "PopularSubjectCustomCollectionViewCell"
        static let collectionViewItemSpacing: CGFloat = 30
        static let collectionViewCellWidth: Int = 150
        static let collectionViewCellHeight: Int = 190
    }

    // MARK: - IBOutlets

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var popularSubjectsCollectionView: UICollectionView!

    // MARK: - Properties

    private var contentArray: [PopularSubjectsDataModel]?
    private var model: PopularSubjectsViewModel?

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
        setupUICollectionView()
    }

    private func setupUICollectionView() {
        popularSubjectsCollectionView.delegate = self
        popularSubjectsCollectionView.dataSource = self
        popularSubjectsCollectionView.register(
            UINib(nibName: Constants.popularSubjectsCollectionViewCellNibName, bundle: nil),
            forCellWithReuseIdentifier: Constants.popularSubjectsCollectionViewCelldentifier
        )
        popularSubjectsCollectionView.giveSpacingAndSizeForCollectionView(
            space: Constants.collectionViewItemSpacing,
            itemWidth: Constants.collectionViewCellWidth,
            itemHeight: Constants.collectionViewCellHeight
        )
    }

    // MARK: - Business Logic

    func configure(viewModel: PopularSubjectsViewModel) {
        self.model = viewModel
        self.titleLabel.text = viewModel.titleText
        self.contentArray = viewModel.contents
        popularSubjectsCollectionView.reloadData()
    }
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate

extension PopularSubjectsView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentArray?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = popularSubjectsCollectionView.dequeueReusableCell(
            withReuseIdentifier: Constants.popularSubjectsCollectionViewCelldentifier,
            for: indexPath
        ) as? PopularSubjectCustomCollectionViewCell else {
            return PopularSubjectCustomCollectionViewCell()
        }

        if let safeContentArray = contentArray {
            cell.configure(dataModel: safeContentArray[indexPath.row])
        }
        return cell
    }
}

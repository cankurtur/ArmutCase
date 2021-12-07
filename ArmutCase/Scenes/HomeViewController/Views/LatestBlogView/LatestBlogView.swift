//
//  LatestBlogView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class LatestBlogView: UIView {
    // MARK: - Constants
    private struct Constants {
        static let latestBlogCollectionViewCelldentifier: String = "latestBlogCell"
        static let latestBlogCollectionViewCellNibName: String = "LatestBlogCustomCollectionViewCell"
        static let collectionViewItemSpacing: CGFloat = 30
        static let collectionViewCellWidth: Int = 250
        static let collectionViewCellHeight: Int = 300
    }

    // MARK: - IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var latestBlogCollectionView: UICollectionView!

    // MARK: - Properties
    private var contentArray: [LatestBlogDataModel]?
    private var model: LatestBlogViewModel?

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
        latestBlogCollectionView.delegate = self
        latestBlogCollectionView.dataSource = self
        latestBlogCollectionView.register(
            UINib(nibName: Constants.latestBlogCollectionViewCellNibName, bundle: nil),
            forCellWithReuseIdentifier: Constants.latestBlogCollectionViewCelldentifier
        )
        latestBlogCollectionView.giveSpacingAndSizeForCollectionView(
            space: Constants.collectionViewItemSpacing,
            itemWidth: Constants.collectionViewCellWidth,
            itemHeight: Constants.collectionViewCellHeight
        )
    }

    func configure(viewModel: LatestBlogViewModel) {
        self.model = viewModel
        self.titleLabel.text = viewModel.titleText
        self.contentArray = viewModel.contents
        latestBlogCollectionView.reloadData()
    }
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
extension LatestBlogView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentArray?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = latestBlogCollectionView.dequeueReusableCell(
            withReuseIdentifier: Constants.latestBlogCollectionViewCelldentifier,
            for: indexPath
        ) as? LatestBlogCustomCollectionViewCell else {
            return LatestBlogCustomCollectionViewCell()
        }

        if let safeContentArray = contentArray {
            cell.configure(dataModel: safeContentArray[indexPath.row])
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let contentArray = contentArray,
              let url = URL(string: contentArray[indexPath.row].link) else { return }
        model?.openLink(url: url)
    }
}

//
//  ServiceAreasView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 4.12.2021.
//

import UIKit

protocol Presentable: AnyObject {
    func presentDetails(id: Int)
}

class ServiceAreasView: UIView {
    // MARK: - Constants
    private struct Constants {
        static let imageAndTitleCollectionViewCellIdentifier: String = "customImageAndTitleCell"
        static let imageAndTitleCollectionViewCellNibName: String = "ImageAndTitleCollectionViewCell"
    }

    // MARK: - IBOutlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var serviceAreasCollectionView: UICollectionView!

    // MARK: - Properties
    private var elementArray: [ImageAndTitleViewModel]?
    private var model: ServiceAreasViewModel?
    weak var delegate: Presentable?

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
            UINib(nibName: Constants.imageAndTitleCollectionViewCellNibName, bundle: nil),
            forCellWithReuseIdentifier: Constants.imageAndTitleCollectionViewCellIdentifier
        )
    }

    func configure(viewModel: ServiceAreasViewModel) {
        titleLabel.text = viewModel.titleText
        elementArray = viewModel.getContents()
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
            withReuseIdentifier: Constants.imageAndTitleCollectionViewCellIdentifier,
            for: indexPath
        ) as? ImageAndTitleCollectionViewCell else {
            return ImageAndTitleCollectionViewCell()
        }

        if let safeElementArray = elementArray {
            cell.configure(imageAndTitleViewModel: safeElementArray[indexPath.row])
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let elementArray = elementArray {
            delegate?.presentDetails(id: elementArray[indexPath.row].serviceID)
        }
    }
}

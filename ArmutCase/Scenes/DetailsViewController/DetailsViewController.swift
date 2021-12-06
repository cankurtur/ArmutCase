//
//  DetailsViewController.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet private weak var serviceAndDetailsView: ServiceAndDetailsView!

    // MARK: - Properties
    private var viewModel = DetailsViewModel()
    var serviceID: Int?
    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    // MARK: - Business Logic
    private func setupBindings() {
        guard let serviceID = serviceID else { return }

        viewModel.fetchDetailsData(serviceID: serviceID) { (detailsUIModel) in
            self.configureViewsWithData(model: detailsUIModel)
        }
    }


    private func configureViewsWithData(model: DetailsUIModel) {
        let serviceDetailsViewModel = ServiceAndDetailsViewModel(detailsUIModel: model)
        serviceAndDetailsView.configure(viewModel: serviceDetailsViewModel)
    }
}

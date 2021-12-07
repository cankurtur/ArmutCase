//
//  DetailsViewController.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import Alamofire
//import SwiftMessages
import UIKit

class DetailsViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet private weak var serviceAndDetailsView: ServiceAndDetailsView!
    @IBOutlet private weak var workInformationView: WorkInformationView!
    @IBOutlet private weak var emptyView: UIView!

    // MARK: - Properties

    private var viewModel: DetailsViewModel!
    var serviceID: Int?

    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
        setupBindings()
    }

    // MARK: - Setup

    private func setupViewModel() {
        let networking = Networking()
        networking.delegate = self
        viewModel = DetailsViewModel(networking: networking)
    }

    private func setupBindings() {
        guard let serviceID = serviceID else { return }

        viewModel.fetchDetailsData(serviceID: serviceID) { (detailsUIModel) in
            self.emptyView.isHidden = true
            self.workInformationView.isHidden = false
            self.configureViews(model: detailsUIModel)
        }
    }

    // MARK: - Business Logic

    private func configureViews(model: DetailsUIModel) {
        let serviceDetailsViewModel = ServiceAndDetailsViewModel(detailsUIModel: model)
        serviceAndDetailsView.configure(viewModel: serviceDetailsViewModel)
        workInformationView.configure(viewModel: viewModel.workAndInformationViewModel)
    }
}

// MARK: - ErrorDelegate

extension DetailsViewController: ServiceErrorDelegate {
    func networking(_ networking: Networking, didThrow error: AFError) {
        emptyView.isHidden = false
        emptyView.isHidden = false
//        self.workInformationView.isHidden = true
//        let view = MessageView.viewFromNib(layout: .cardView)
//        view.configureTheme(.info)
//        view.configureContent(body: "Something went wrong")
//        SwiftMessages.show(view: view)
    }
}

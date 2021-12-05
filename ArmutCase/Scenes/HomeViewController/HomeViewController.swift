//
//  HomeViewController.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet private weak var searchView: SearchView!
    @IBOutlet private weak var campaignView: CampaignView!
    @IBOutlet private weak var serviceAreasView: ServiceAreasView!
    @IBOutlet private weak var popularSubjectsView: PopularSubjectsView!

    // MARK: - Properties
    private var viewModel = HomeViewModel()

    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    // MARK: - Business Logic
    private func setupBindings() {
        configureViews()

        viewModel.fetchHomeData { homeUIModel in
            self.configureViewsWithData(model: homeUIModel)
        }
    }

    private func configureViews() {
        searchView.configure(viewModel: viewModel.searchViewModel)
        campaignView.configure(viewModel: viewModel.campaignViewModel)
    }

    private func configureViewsWithData(model: HomeUIModel) {
        configureServiceAreasView(model: model)
        configurePopularSubjectsView(model: model)
    }

    private func configureServiceAreasView(model: HomeUIModel) {
        guard let allServices = model.allServices else { return }

        let servicesAreasViewModel = ServiceAreasViewModel(serviceUIModel: allServices)
        serviceAreasView.configure(viewModel: servicesAreasViewModel)
    }

    private func configurePopularSubjectsView(model: HomeUIModel) {
        guard let popularServices = model.popular else { return }

        let popularSubjectsViewModel = PopularSubjectsViewModel(servicesUIModel: popularServices)
        popularSubjectsView.configure(viewModel: popularSubjectsViewModel)
    }
}

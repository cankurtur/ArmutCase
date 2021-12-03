//
//  HomeViewController.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var searchView: SearchView!

    // MARK: - Properties
    private var viewModel: HomeViewModel = HomeViewModel()

    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindings()
    }

    // MARK: - Business Logic
    private func setupUI() {
    }

    private func setupBindings() {
        searchView.configure(viewModel: viewModel.searchViewModel)
    }
}

//
//  ServiceAndDetailsView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

class ServiceAndDetailsView: UIView {

    // MARK: - Constants

    private struct Constants {
        static let tableViewCellIdentifier: String = "customTableViewCell"
        static let tableViewCellNibName: String = "CustomTableViewCell"
    }

    // MARK: - IBOutlets

    @IBOutlet private weak var imageView: CustomImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Properties

    private var tableViewContents: [IconAndTitleViewModel]?

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
        setupTableView()
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: Constants.tableViewCellNibName, bundle: nil), forCellReuseIdentifier: Constants.tableViewCellIdentifier)
        tableView.separatorColor = .clear
    }

    // MARK: - Business Logic

    func configure(viewModel: ServiceAndDetailsViewModel) {
        imageView.configure(viewModel: viewModel.imageViewModel)
        titleLabel.text = viewModel.titleText
        tableViewContents = viewModel.contents
        tableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension ServiceAndDetailsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewContents?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: Constants.tableViewCellIdentifier) as? CustomTableViewCell,
              let contents = tableViewContents else {
            return UITableViewCell()
        }
        
        cell.configure(model: contents[indexPath.row])
        return cell
    }
}

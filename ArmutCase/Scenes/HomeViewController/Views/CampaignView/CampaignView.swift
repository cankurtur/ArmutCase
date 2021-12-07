//
//  CampaignView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 3.12.2021.
//

import UIKit

class CampaignView: UIView {

    // MARK: - Constant

    private struct Constants {
        static let cornerRadius: CGFloat = 8
    }

    // MARK: - IBOutlets

    @IBOutlet private weak var campaignImageView: UIImageView!
    @IBOutlet private weak var campaignTitleLabel: UILabel!
    @IBOutlet private weak var campaignOfferLabel: UILabel!
    @IBOutlet private weak var discountView: UIView!
    @IBOutlet private weak var discountLabel: UILabel!

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
        setupUI()
        setupDiscountView()
    }

    private func setupUI() {
        layer.cornerRadius = Constants.cornerRadius
        layer.masksToBounds = true
    }

    private func setupDiscountView() {
        discountView.layer.cornerRadius = Constants.cornerRadius
        discountView.layer.masksToBounds = true
    }

    // MARK: - Business Logic

    func configure(viewModel: CampaignViewModel) {
        campaignImageView.image = viewModel.campaignImage
        campaignTitleLabel.text = viewModel.campaignTitleText
        campaignOfferLabel.text = viewModel.campaignOfferText
        discountLabel.text = viewModel.discountText
    }
}

//
//  AutoSizedTableView.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

/// This class automatically configure the size of the table view
class AutoSizedTableView: UITableView {
    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}

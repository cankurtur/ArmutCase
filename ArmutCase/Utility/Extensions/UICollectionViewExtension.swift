//
//  UICollectionViewExtension.swift
//  ArmutCase
//
//  Created by Can Kurtur on 6.12.2021.
//

import UIKit

extension UICollectionView {
    /// This function is used to configure collection view cells.
    func giveSpacingAndSizeForCollectionView(space: CGFloat, itemWidth: Int, itemHeight: Int) {
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = space
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
    }
}

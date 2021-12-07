//
//  UIViewControllerExtension.swift
//  ArmutCase
//
//  Created by Can Kurtur on 7.12.2021.
//

import UIKit

extension UIViewController {

    /// This function hides the keyboard when clicked elsewhere on the screen.
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

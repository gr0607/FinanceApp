//
//  UILabel + Extension.swift
//  FinanceApp
//
//  Created by admin on 06.10.2021.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .geezaPro20()) {
        self.init()
        self.text = text
        self.font = font
    }
}

//
//  UIButton + Extenstion.swift
//  FinanceApp
//
//  Created by admin on 06.10.2021.
//

import UIKit

extension UIButton {
    convenience init(title: String,
                     titleColor: UIColor,
                     backgroundColor: UIColor,
                     font: UIFont? = .geezaPro20(),
                     cornerRadius: CGFloat = 8) {
        self.init(type: .system)
        
        self.setTitle(title,for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
    }
}

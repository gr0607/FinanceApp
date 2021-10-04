//
//  SpendViewController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class SpendViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

//MARK: - SwiftUI
import SwiftUI

struct SpendVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let spendVC = SpendViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return spendVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}


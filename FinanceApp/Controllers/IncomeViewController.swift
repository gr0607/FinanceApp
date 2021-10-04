//
//   IncomeViewController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class IncomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

//MARK: - SwiftUI
import SwiftUI

struct IncomeVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let incomeVC = IncomeViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return incomeVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}


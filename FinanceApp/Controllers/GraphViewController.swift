//
//  GraphViewController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class GraphViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

//MARK: - SwiftUI
import SwiftUI

struct GraphVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let graphVC = GraphViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return graphVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}


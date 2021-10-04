//
//  MainTabBarController.swift
//  FinanceApp
//
//  Created by admin on 04.10.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let incomeViewController = IncomeViewController()
        let graphViewCotroller = GraphViewController()
        let spendViewController = SpendViewController()
        
        let incomeImage = UIImage(systemName: "newspaper")
        let graphImage = UIImage(systemName: "arrow.up.right")
        let spendImage = UIImage(systemName: "person.badge.minus")
        
        viewControllers = [
            generateNavigationController(rootViewController: incomeViewController, title: "Income", image: incomeImage!),
            generateNavigationController(rootViewController: graphViewCotroller, title: "Graph", image: graphImage!),
            generateNavigationController(rootViewController: spendViewController, title: "Spend", image: spendImage!)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}

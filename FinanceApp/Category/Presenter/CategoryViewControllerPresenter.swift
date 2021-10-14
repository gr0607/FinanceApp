//
//  CategoryPresenter.swift
//  FinanceApp
//
//  Created by admin on 14.10.2021.
//

import UIKit

class CategoryViewControllerPresenter {
    weak var categoryVC: CategoryViewController!
    
    private var categories = StorageManager.getAllCategories()
    
    init(categoryVC: CategoryViewController) {
        self.categoryVC = categoryVC
    }
    
    func getCategoriesCount() -> Int{
        return categories.count
    }
    
    func getCategories(for indexPath: IndexPath) -> Category {
        return categories[indexPath.row]
    }
    
    func showDetail(for category: Category) {
        let detailVC = SpendViewController()
        detailVC.spendPresenter.details = category.spends
        categoryVC.navigationController?.pushViewController(detailVC, animated: true)
    }
}

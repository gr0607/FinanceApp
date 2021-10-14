//
//  SpendViewControllerPresenter.swift
//  FinanceApp
//
//  Created by admin on 14.10.2021.
//

import UIKit
import RealmSwift

class SpendViewControllerPresenter {
    
    var details: List<Spend>?
    weak var spendVC: SpendViewController?
    
    init(spendViewController: SpendViewController) {
        self.spendVC = spendViewController
    }
    
    func getDetailsCount() -> Int? {
        return details?.count
    }
    
    func getDetail(for indexPath: IndexPath) -> Spend? {
        return details?[indexPath.row]
    }
}

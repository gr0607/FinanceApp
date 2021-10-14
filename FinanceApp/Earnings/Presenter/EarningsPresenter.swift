//
//  EarningsPresenter.swift
//  FinanceApp
//
//  Created by admin on 14.10.2021.
//

import UIKit
import RealmSwift

class EarningsPresenter {
    
    private var earnings: Results<Earnings>!
    weak var earningsVC: EarningsViewController?
    
    init(earningsVC: EarningsViewController) {
        self.earningsVC = earningsVC
        earnings = StorageManager.getAllEarnings()
    }
    
    func getEatningsCount() -> Int {
        return earnings.count
    }
    
    func getEarning(indexPath: IndexPath) -> Earnings {
        return earnings[indexPath.row]
    }
}

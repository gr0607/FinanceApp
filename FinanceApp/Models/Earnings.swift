//
//  Income.swift
//  FinanceApp
//
//  Created by admin on 12.10.2021.
//

import Foundation
import RealmSwift

class Earnings: Object {
    @objc dynamic var incomeName = ""
    @objc dynamic var incomeSum = 0
    @objc dynamic var date = Date()
    
    convenience init(incomeName: String, incomeSum: Int, date: Date) {
        self.init()
        self.incomeName = incomeName
        self.incomeSum = incomeSum
        self.date = date
    }
}
